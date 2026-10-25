import Foundation
import SwiftUI
import Observation

@Observable
final class HousingStore {
    var guideSteps: [GuideStep] = []
    var resources: [Resource] = []
    var savedResourceIds: Set<String> = []
    var documents: [DocumentItem] = []
    var contacts: [TrustedContact] = []
    var dailyFocusStepId: String?
    
    private let storageKey = "BridgeHome_PersistedState_v1"
    
    init() {
        loadFromPersistence()
        if guideSteps.isEmpty || resources.isEmpty || documents.isEmpty {
            loadDefaultData()
            saveToPersistence()
        }
    }
    
    // MARK: - Computed Convenience Properties
    
    var dailyFocusStep: GuideStep? {
        if let dailyFocusStepId, let step = guideSteps.first(where: { $0.id == dailyFocusStepId }) {
            return step
        }
        // Fallback to the first incomplete step
        return guideSteps.first(where: { !$0.isCompleted }) ?? guideSteps.first
    }
    
    var savedResources: [Resource] {
        resources.filter { savedResourceIds.contains($0.id) }
    }
    
    var emergencyResources: [Resource] {
        resources.filter { $0.isEmergencyHotline }
    }
    
    func steps(for stage: GuideStage) -> [GuideStep] {
        guideSteps.filter { $0.stage == stage }.sorted(by: { $0.order < $1.order })
    }
    
    func completedStepsCount(for stage: GuideStage) -> Int {
        steps(for: stage).filter { $0.isCompleted }.count
    }
    
    // MARK: - User Actions
    
    func toggleStepCompletion(stepId: String) {
        if let index = guideSteps.firstIndex(where: { $0.id == stepId }) {
            guideSteps[index].isCompleted.toggle()
            saveToPersistence()
        }
    }
    
    func toggleChecklistItem(stepId: String, item: String) {
        guard let index = guideSteps.firstIndex(where: { $0.id == stepId }) else { return }
        if guideSteps[index].completedChecklistItems.contains(item) {
            guideSteps[index].completedChecklistItems.removeAll(where: { $0 == item })
        } else {
            guideSteps[index].completedChecklistItems.append(item)
        }
        saveToPersistence()
    }
    
    func updateStepNotes(stepId: String, notes: String) {
        guard let index = guideSteps.firstIndex(where: { $0.id == stepId }) else { return }
        guideSteps[index].personalNotes = notes
        saveToPersistence()
    }
    
    func setDailyFocus(stepId: String) {
        dailyFocusStepId = stepId
        saveToPersistence()
    }
    
    func toggleResourceSaved(resourceId: String) {
        if savedResourceIds.contains(resourceId) {
            savedResourceIds.remove(resourceId)
        } else {
            savedResourceIds.insert(resourceId)
        }
        saveToPersistence()
    }
    
    func isResourceSaved(_ resourceId: String) -> Bool {
        savedResourceIds.contains(resourceId)
    }
    
    func updateDocumentStatus(documentId: String, status: DocumentStatus) {
        guard let index = documents.firstIndex(where: { $0.id == documentId }) else { return }
        documents[index].status = status
        documents[index].lastUpdated = Date()
        saveToPersistence()
    }
    
    func updateDocumentNotes(documentId: String, notes: String) {
        guard let index = documents.firstIndex(where: { $0.id == documentId }) else { return }
        documents[index].notes = notes
        documents[index].lastUpdated = Date()
        saveToPersistence()
    }
    
    func addContact(_ contact: TrustedContact) {
        contacts.append(contact)
        saveToPersistence()
    }
    
    func updateContact(_ contact: TrustedContact) {
        if let index = contacts.firstIndex(where: { $0.id == contact.id }) {
            contacts[index] = contact
            saveToPersistence()
        }
    }
    
    func deleteContact(id: String) {
        contacts.removeAll(where: { $0.id == id })
        saveToPersistence()
    }
    
    func resetToDefaults() {
        loadDefaultData()
        savedResourceIds.removeAll()
        dailyFocusStepId = nil
        saveToPersistence()
    }
    
    // MARK: - Local Persistence
    
    private struct PersistedSnapshot: Codable {
        let guideSteps: [GuideStep]
        let resources: [Resource]
        let savedResourceIds: [String]
        let documents: [DocumentItem]
        let contacts: [TrustedContact]
        let dailyFocusStepId: String?
    }
    
    private func saveToPersistence() {
        let snapshot = PersistedSnapshot(
            guideSteps: guideSteps,
            resources: resources,
            savedResourceIds: Array(savedResourceIds),
            documents: documents,
            contacts: contacts,
            dailyFocusStepId: dailyFocusStepId
        )
        if let data = try? JSONEncoder().encode(snapshot) {
            UserDefaults.standard.set(data, forKey: storageKey)
        }
    }
    
    private func loadFromPersistence() {
        guard let data = UserDefaults.standard.data(forKey: storageKey),
              let snapshot = try? JSONDecoder().decode(PersistedSnapshot.self, from: data) else {
            return
        }
        self.guideSteps = snapshot.guideSteps
        self.resources = snapshot.resources
        self.savedResourceIds = Set(snapshot.savedResourceIds)
        self.documents = snapshot.documents
        self.contacts = snapshot.contacts
        self.dailyFocusStepId = snapshot.dailyFocusStepId
    }
    
    // MARK: - Dignified, Calibrated Seed Data
    
    private func loadDefaultData() {
        guideSteps = [
            // Stage 1: Immediate Safety
            GuideStep(
                id: "step_safe_tonight",
                stage: .immediateSafety,
                order: 1,
                title: "Confirm Safe Shelter for Tonight",
                shortSummary: "Find an emergency intake, safe parking lot, or family room before nightfall.",
                detail: """
                Your immediate physical safety and warmth take priority over all administrative tasks.

                Shelter intake hours vary widely. Most municipal family and individual emergency shelters accept intakes between 4:00 PM and 7:00 PM, or through 2-1-1 dispatch. If you have pets or a partner, let the intake specialist know immediately so you can be placed in an accommodating facility or hotel voucher program.
                """,
                actionChecklist: [
                    "Call 2-1-1 or the local shelter hotline before 3:00 PM",
                    "Pack one backpack with medications, phone charger, and vital records",
                    "Ask about quiet hours, baggage allowances, and check-in curfews"
                ],
                rightsAndPitfalls: "You have the right to a safe environment free from harassment. If you feel unsafe at any intake facility, you can request an alternate placement or a diversion specialist.",
                recommendedResourceId: "res_211"
            ),
            GuideStep(
                id: "step_belongings_secured",
                stage: .immediateSafety,
                order: 2,
                title: "Protect Vital Belongings & Medication",
                shortSummary: "Safeguard your prescription medications, phone, and identity documents.",
                detail: """
                Losing essential medications or your phone makes stabilizing significantly harder.

                Keep prescription bottles in their original labeled containers. Many transit centers, public libraries, and community day-shelters offer free day-lockers or safe storage while you attend appointments.
                """,
                actionChecklist: [
                    "Keep original prescription labels on all daily medications",
                    "Store physical documents in a waterproof sealable pouch",
                    "Keep phone charged and save emergency numbers on paper in your pocket"
                ]
            ),
            GuideStep(
                id: "step_coordinated_entry",
                stage: .immediateSafety,
                order: 3,
                title: "Complete Coordinated Entry Assessment",
                shortSummary: "Register with the local housing system to become eligible for housing programs.",
                detail: """
                Coordinated Entry (often called CE or CES) is the standardized intake process that connects individuals and families with supportive housing, rapid re-housing, and voucher waitlists.

                It is not a test you can fail. It simply assesses your unique health, family, and housing needs so navigators can match you with available housing programs as funding opens.
                """,
                actionChecklist: [
                    "Locate your nearest designated Coordinated Entry access site",
                    "Schedule or walk in for a 30-minute vulnerability assessment interview",
                    "Record your caseworker or navigator's direct phone number"
                ],
                rightsAndPitfalls: "Be completely honest during the assessment about your health or safety concerns. The system prioritizes those facing acute health vulnerabilities or displacement risks."
            ),
            
            // Stage 2: Vital Documents
            GuideStep(
                id: "step_state_id",
                stage: .essentialDocuments,
                order: 1,
                title: "Obtain a Valid Government Photo ID",
                shortSummary: "A state ID or driver's license unlocks benefits, bank accounts, and leases.",
                detail: """
                Nearly every landlord, shelter program, and employer requires government-issued photo identification.

                Most states provide a homeless fee waiver or low-income certification form that waives the $25-$45 DMV fee. Ask your caseworker, homeless liaison, or legal clinic for a signed verification letter before visiting the DMV.
                """,
                actionChecklist: [
                    "Obtain a fee waiver certification letter from your caseworker or shelter director",
                    "Bring birth certificate or secondary verification documents to the DMV",
                    "Request a temporary paper ID printout to use immediately while waiting for the card"
                ],
                rightsAndPitfalls: "If you do not have a permanent mailing address, you can use the address of an authorized shelter, day center, or general delivery at the central post office."
            ),
            GuideStep(
                id: "step_income_verification",
                stage: .essentialDocuments,
                order: 2,
                title: "Assemble Proof of Income or Benefits",
                shortSummary: "Collect award letters, pay stubs, or SSI statements from the last 60 days.",
                detail: """
                Housing applications require documented proof of how rent will be sustained.

                If you receive Supplemental Security Income (SSI), SSDI, SNAP, TANF, or veterans' benefits, print your official 'Benefit Verification Letter' directly from your online SSA account or local social services office. If you work day labor or cash jobs, write a signed affidavit of income.
                """,
                actionChecklist: [
                    "Download official Benefit Verification Letter from SSA.gov or local county office",
                    "Collect last 3 consecutive pay stubs if employed",
                    "Keep printed copies in your physical document binder"
                ]
            ),
            GuideStep(
                id: "step_bank_statements",
                stage: .essentialDocuments,
                order: 3,
                title: "Gather Banking & Financial Records",
                shortSummary: "Print the most recent 2-3 months of bank statements or prepaid card statements.",
                detail: """
                Property managers verify your active banking history and balance. If you do not have a traditional bank account, statements from your Direct Express card, Chime, or prepaid benefit card will also qualify.
                """,
                actionChecklist: [
                    "Download 60 to 90 days of checking and savings account statements",
                    "Explain any unusual cash deposits with brief written receipts",
                    "Ensure account balances reflect available funds for security deposit"
                ]
            ),
            
            // Stage 3: Search & Vouchers
            GuideStep(
                id: "step_voucher_basics",
                stage: .housingSearch,
                order: 1,
                title: "Understand Your Voucher & Budget Window",
                shortSummary: "Know your maximum payment standard, bedroom size, and expiration deadline.",
                detail: """
                If awarded a Section 8 Housing Choice Voucher, rapid re-housing subsidy, or emergency housing voucher (EHV), pay close attention to your briefing packet.

                You typically have 60 to 120 days to lease an eligible unit. The voucher covers the difference between 30% of your adjusted monthly income and the approved Payment Standard.
                """,
                actionChecklist: [
                    "Confirm your exact voucher expiration date and extension policy",
                    "Review the approved payment standard table for your bedroom count",
                    "Ensure your housing authority contact email is saved in your contacts"
                ],
                rightsAndPitfalls: "Never give up your voucher search without asking for an official 30-day or 60-day search extension in writing before the expiration date."
            ),
            GuideStep(
                id: "step_search_scams",
                stage: .housingSearch,
                order: 2,
                title: "Tour Safely & Avoid Rental Scams",
                shortSummary: "Protect yourself from phantom listings, wire transfer scams, and illegal fees.",
                detail: """
                Housing instability can make people vulnerable to predatory listings on social media and classifieds.

                Legitimate landlords will never ask for security deposits via cash app, gift cards, or wire transfer before a physical walkthrough and formal written lease. In many jurisdictions, application fees are legally capped.
                """,
                actionChecklist: [
                    "Always tour the interior of the apartment in person before paying any money",
                    "Verify the owner or management company on the county property assessor's public website",
                    "Never pay application fees in cash without a signed, itemized receipt"
                ],
                rightsAndPitfalls: "Beware of landlords claiming they are out of the country and will mail keys once a deposit is wired. This is always a scam."
            ),
            GuideStep(
                id: "step_renter_portfolio",
                stage: .housingSearch,
                order: 3,
                title: "Build a One-Page Renter Resume",
                shortSummary: "A clean summary of your household, income, and references stands out.",
                detail: """
                Private landlords review dozens of applicants. A tidy cover letter explaining your stability plan, along with contact details for personal or professional references, sets a positive tone and builds trust.
                """,
                actionChecklist: [
                    "List full names and birth dates of all household members",
                    "Include 2 references (previous landlord, employer, or case manager)",
                    "Attach proof of guaranteed voucher subsidy if applicable"
                ]
            ),
            
            // Stage 4: Move-In & Stability
            GuideStep(
                id: "step_lease_review",
                stage: .sustainingHome,
                order: 1,
                title: "Review the Lease & Move-In Inspection",
                shortSummary: "Inspect every room, take timestamped photos, and understand the lease terms.",
                detail: """
                Before signing, read every clause in your lease agreement carefully. Note the rent due date, grace period, late fee policy, and maintenance reporting rules.

                Conduct a thorough walk-through with the manager. Take clear photos of any pre-existing scratches, leaks, or wall marks to ensure your security deposit is protected when you move out.
                """,
                actionChecklist: [
                    "Photograph every room, appliance, and window before unpacking",
                    "Fill out and retain a signed copy of the Move-In Condition Checklist",
                    "Confirm electric, gas, water, and trash billing responsibilities"
                ],
                rightsAndPitfalls: "Landlords must keep rental units in a habitable condition with working heat, running hot water, and secure locks. You have the right to request repairs in writing."
            ),
            GuideStep(
                id: "step_deposit_assistance",
                stage: .sustainingHome,
                order: 2,
                title: "Access Security Deposit Assistance",
                shortSummary: "Apply for community move-in grants or deposit guarantee funds.",
                detail: """
                First month's rent and security deposit together can easily exceed $2,500. Numerous community action partnerships, charitable trusts, and municipal emergency funds provide one-time move-in assistance.
                """,
                actionChecklist: [
                    "Ask your navigator for local Emergency Solution Grant (ESG) move-in funding",
                    "Request a formal W-9 from your prospective landlord for direct disbursement",
                    "Confirm the payment timeline directly between the grantor and landlord"
                ]
            ),
            GuideStep(
                id: "step_eviction_prevention",
                stage: .sustainingHome,
                order: 3,
                title: "Establish Your Ongoing Safety Net",
                shortSummary: "Know where to get emergency rental relief if an unexpected crisis occurs.",
                detail: """
                Maintaining housing stability is an ongoing journey. If you ever experience an unexpected medical bill, hour reduction at work, or car breakdown, reach out to community rental assistance before missing a rent payment.
                """,
                actionChecklist: [
                    "Set up automated or scheduled rent payments on payday",
                    "Save your local Legal Aid eviction defense hotline",
                    "Keep copies of all rent receipts or digital payment confirmations"
                ]
            )
        ]
        
        resources = [
            Resource(
                id: "res_211",
                name: "2-1-1 Community Helpline",
                category: .shelter,
                address: "Available 24/7 Toll-Free Across All Counties",
                phone: "211",
                hours: "Open 24 hours / 7 days a week",
                overview: "Free, confidential nationwide helpline connecting people to emergency shelter, food, healthcare, and utility bill relief.",
                servicesOffered: [
                    "Emergency shelter placement referrals",
                    "Coordinated entry intake scheduling",
                    "Utility payment assistance programs",
                    "Free local community food pantry directories"
                ],
                eligibility: "Open to anyone in need of housing or community assistance.",
                whatToBring: ["No paperwork needed for initial phone call"],
                isEmergencyHotline: true
            ),
            Resource(
                id: "res_housing_nav",
                name: "Downtown Housing Navigator Center",
                category: .shelter,
                address: "410 S. Main Street, Suite 100",
                phone: "(555) 329-8400",
                hours: "Monday – Friday: 8:00 AM – 4:30 PM",
                overview: "Walk-in resource hub offering Coordinated Entry assessments, mail delivery service, day lockers, and housing search case managers.",
                servicesOffered: [
                    "Coordinated Entry assessments",
                    "Free day-lockers and phone charging stations",
                    "General delivery mail address for clients",
                    "Voucher housing search support"
                ],
                eligibility: "Unsheltered individuals, families at imminent risk of displacement.",
                whatToBring: ["Photo ID if available (not required for first visit)"],
                isEmergencyHotline: false,
                coordinateLatitude: 37.7749,
                coordinateLongitude: -122.4194
            ),
            Resource(
                id: "res_harbor_light",
                name: "Harbor Light Community Center & Meals",
                category: .meals,
                address: "825 Pine Street",
                phone: "(555) 441-2910",
                hours: "Hot Breakfast 7:00 – 8:30 AM • Dinner 5:30 – 7:00 PM Daily",
                overview: "Warm, dignified community dining room offering hot nutritious meals twice daily, emergency hygiene kits, and winter coats.",
                servicesOffered: [
                    "Daily hot breakfast and dinner",
                    "Weekly grocery box distribution (Thursdays 10 AM)",
                    "Hygiene supplies, blankets, and socks",
                    "Free laundry facility access (by sign-up)"
                ],
                eligibility: "Open to all community members without cost or documentation.",
                whatToBring: ["None required"],
                isEmergencyHotline: false
            ),
            Resource(
                id: "res_legal_aid",
                name: "Community Legal Aid Tenant Defense Clinic",
                category: .legal,
                address: "1200 Commonwealth Avenue, 3rd Floor",
                phone: "(555) 892-1144",
                hours: "Monday, Wednesday, Friday: 9:00 AM – 3:00 PM",
                overview: "Non-profit legal aid attorneys providing free advice for tenants facing eviction notices, security deposit disputes, and voucher discrimination.",
                servicesOffered: [
                    "Eviction notice review and court representation",
                    "Source of income (voucher) discrimination advocacy",
                    "Security deposit recovery assistance",
                    "Lease review and habitability complaints"
                ],
                eligibility: "Low-income tenants and families receiving public housing assistance.",
                whatToBring: ["Notice to Quit or court summons", "Lease agreement", "Recent rent receipts"],
                isEmergencyHotline: false
            ),
            Resource(
                id: "res_vital_docs",
                name: "County Vital Records & ID Assistance Project",
                category: .documents,
                address: "600 Civic Center Plaza, Room 140",
                phone: "(555) 720-5620",
                hours: "Tuesday & Thursday: 9:00 AM – 2:00 PM",
                overview: "Dedicated advocate program assisting individuals in ordering certified birth certificates, state identification cards, and homeless fee waiver vouchers.",
                servicesOffered: [
                    "Homeless fee waiver certifications for DMV",
                    "Out-of-state birth certificate ordering grants",
                    "Social Security card application support",
                    "Notary services for housing affidavits"
                ],
                eligibility: "Residents experiencing homelessness or transitional housing.",
                whatToBring: ["Any secondary identification, school records, or shelter residency letter"],
                isEmergencyHotline: false
            ),
            Resource(
                id: "res_health_clinic",
                name: "Mercy Community Wellness & Mobile Health",
                category: .healthcare,
                address: "315 North 7th Street",
                phone: "(555) 604-3388",
                hours: "Monday – Saturday: 8:30 AM – 5:00 PM",
                overview: "Comprehensive primary healthcare, mental wellness counseling, dental urgent care, and 30-day prescription bridge supplies regardless of insurance.",
                servicesOffered: [
                    "Walk-in primary care and preventive screenings",
                    "Prescription assistance and refill bridges",
                    "Mental health and trauma counseling",
                    "Medicaid (Medi-Cal) enrollment assistance"
                ],
                eligibility: "Sliding-scale and free care for uninsured and underinsured individuals.",
                whatToBring: ["Existing prescription bottles", "ID if available"],
                isEmergencyHotline: false
            )
        ]
        
        documents = [
            DocumentItem(
                id: "doc_photo_id",
                name: "State Photo ID or Driver's License",
                category: .identification,
                status: .needed,
                purpose: "Required by almost every landlord, housing authority, and bank.",
                howToAcquire: "Visit the DMV with a homeless fee waiver letter from your shelter or navigator to receive a free or reduced-fee ID. Ask for a temporary paper copy before leaving.",
                feeWaiverNote: "State fee waiver form available through caseworker or authorized shelter."
            ),
            DocumentItem(
                id: "doc_birth_cert",
                name: "Certified Birth Certificate",
                category: .identification,
                status: .needed,
                purpose: "Proof of citizenship and identity for housing vouchers and state ID.",
                howToAcquire: "Order through county vital statistics or VitalChek. If born out of state, the ID Project at County Vital Records can cover the state fees.",
                feeWaiverNote: "Grants exist through community action agencies to cover out-of-state fees."
            ),
            DocumentItem(
                id: "doc_ssn_card",
                name: "Social Security Card",
                category: .identification,
                status: .needed,
                purpose: "Verification for HUD housing vouchers, tax credits, and employment.",
                howToAcquire: "Free replacement cards can be requested online via SSA.gov or in person at your nearest Social Security Administration office with a valid photo ID.",
                feeWaiverNote: "Always free directly from the Social Security Administration."
            ),
            DocumentItem(
                id: "doc_income_proof",
                name: "Proof of Income or Benefits Letter",
                category: .income,
                status: .needed,
                purpose: "Proves you have regular funds to pay your portion of monthly rent.",
                howToAcquire: "Print an official Benefit Verification Letter from SSA.gov or your state social services portal (SNAP/TANF/Medicaid). If working, collect your last 3 consecutive paystubs."
            ),
            DocumentItem(
                id: "doc_bank_records",
                name: "Bank / Debit Card Statements (Last 60 Days)",
                category: .income,
                status: .needed,
                purpose: "Shows landlords active account management and ability to pay deposits.",
                howToAcquire: "Download PDF statements from your mobile banking app or request printouts at your local branch. Statements from Direct Express or Chime are also widely accepted."
            ),
            DocumentItem(
                id: "doc_references",
                name: "Landlord or Personal References",
                category: .residency,
                status: .needed,
                purpose: "Builds landlord confidence with verifiable character recommendations.",
                howToAcquire: "Ask a former landlord, employer, religious leader, or caseworker for a brief letter confirming your reliability, cleanliness, and respectful communication."
            )
        ]
        
        contacts = [
            TrustedContact(
                id: "contact_211",
                name: "Community Helpline (2-1-1)",
                role: "Emergency Shelter & Basic Needs Dispatch",
                organization: "United Way / Local County",
                phone: "211",
                email: "help@211.org",
                notes: "Available 24/7. Call immediately if displaced or seeking emergency warming center."
            ),
            TrustedContact(
                id: "contact_caseworker_sample",
                name: "Sarah Chen",
                role: "Housing Navigator",
                organization: "Downtown Housing Navigator Center",
                phone: "(555) 329-8412",
                email: "schen@navigatorcenter.org",
                notes: "Assisting with Coordinated Entry assessment and voucher application documentation."
            )
        ]
        
        dailyFocusStepId = "step_safe_tonight"
    }
}
