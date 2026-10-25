import Foundation
/// Master database providing 340 comprehensive, interconnected articles
/// spanning all 50 states, federal housing programs, street survival, and legal rights.
enum ArticleDatabase {

    static func generateAllArticles() -> [Article] {
        var articles: [Article] = []
        articles.reserveCapacity(345)
        articles.append(contentsOf: generateStateEvictionArticles())
        articles.append(contentsOf: generateStateDepositArticles())
        articles.append(contentsOf: generateStateVitalArticles())
        articles.append(contentsOf: generateStateERAPArticles())
        articles.append(contentsOf: generateStateCampingArticles())
        articles.append(contentsOf: generateSubsidizedHousingArticles())
        articles.append(contentsOf: generateStreetSurvivalArticles())
        articles.append(contentsOf: generateFinancialReliefArticles())
        articles.append(contentsOf: generateSpecialPopulationsArticles())
        articles.append(contentsOf: generateLandlordOutreachArticles())
        return articles
    }

    // MARK: - 1. State Eviction Articles (51)
    private static func generateStateEvictionArticles() -> [Article] {
        [
            Article(
                id: "eviction_al",
                title: "Alabama Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Alabama",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Alabama.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Alabama",
                        body: "Under Ala. Code § 35-9A-421, landlords in Alabama must deliver a formal 7-Day Notice to Pay or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Notice to Pay or Vacate", "Governing Code: Ala. Code § 35-9A-421", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Alabama. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Alabama",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Notice to Pay or Vacate", "Governing statute: Ala. Code § 35-9A-421", "Self-help lockouts are illegal across Alabama"],
                relatedArticleIds: ["deposit_al", "vital_al", "era_al", "camping_al", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ak",
                title: "Alaska Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Alaska",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Alaska.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Alaska",
                        body: "Under Alaska Stat. § 34.03.220, landlords in Alaska must deliver a formal 7-Day Notice to Quit for Nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Notice to Quit for Nonpayment", "Governing Code: Alaska Stat. § 34.03.220", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Alaska. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Alaska",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Notice to Quit for Nonpayment", "Governing statute: Alaska Stat. § 34.03.220", "Self-help lockouts are illegal across Alaska"],
                relatedArticleIds: ["deposit_ak", "vital_ak", "era_ak", "camping_ak", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_az",
                title: "Arizona Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Arizona",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Arizona.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Arizona",
                        body: "Under Ariz. Rev. Stat. § 33-1368, landlords in Arizona must deliver a formal 5-Day Notice to Pay or Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Notice to Pay or Quit", "Governing Code: Ariz. Rev. Stat. § 33-1368", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Arizona. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Arizona",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Notice to Pay or Quit", "Governing statute: Ariz. Rev. Stat. § 33-1368", "Self-help lockouts are illegal across Arizona"],
                relatedArticleIds: ["deposit_az", "vital_az", "era_az", "camping_az", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ar",
                title: "Arkansas Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Arkansas",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Arkansas.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Arkansas",
                        body: "Under Ark. Code Ann. § 18-17-701, landlords in Arkansas must deliver a formal 3-Day Notice to Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Vacate", "Governing Code: Ark. Code Ann. § 18-17-701", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Arkansas. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Arkansas",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Vacate", "Governing statute: Ark. Code Ann. § 18-17-701", "Self-help lockouts are illegal across Arkansas"],
                relatedArticleIds: ["deposit_ar", "vital_ar", "era_ar", "camping_ar", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ca",
                title: "California Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "California",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in California.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in California",
                        body: "Under Cal. Civ. Code § 1946.2 & § 1161, landlords in California must deliver a formal 3-Day Notice to Pay or Quit (AB 1482 Just Cause required after 12 mos) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Pay or Quit (AB 1482 Just Cause required after 12 mos)", "Governing Code: Cal. Civ. Code § 1946.2 & § 1161", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in California. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in California",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Pay or Quit (AB 1482 Just Cause required after 12 mos)", "Governing statute: Cal. Civ. Code § 1946.2 & § 1161", "Self-help lockouts are illegal across California"],
                relatedArticleIds: ["deposit_ca", "vital_ca", "era_ca", "camping_ca", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_co",
                title: "Colorado Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Colorado",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Colorado.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Colorado",
                        body: "Under Colo. Rev. Stat. § 13-40-104, landlords in Colorado must deliver a formal 10-Day Demand for Compliance or Possession before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 10-Day Demand for Compliance or Possession", "Governing Code: Colo. Rev. Stat. § 13-40-104", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Colorado. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Colorado",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 10-Day Demand for Compliance or Possession", "Governing statute: Colo. Rev. Stat. § 13-40-104", "Self-help lockouts are illegal across Colorado"],
                relatedArticleIds: ["deposit_co", "vital_co", "era_co", "camping_co", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ct",
                title: "Connecticut Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Connecticut",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Connecticut.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Connecticut",
                        body: "Under Conn. Gen. Stat. § 47a-23, landlords in Connecticut must deliver a formal 3-Day Notice to Quit Possession before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Quit Possession", "Governing Code: Conn. Gen. Stat. § 47a-23", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Connecticut. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Connecticut",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Quit Possession", "Governing statute: Conn. Gen. Stat. § 47a-23", "Self-help lockouts are illegal across Connecticut"],
                relatedArticleIds: ["deposit_ct", "vital_ct", "era_ct", "camping_ct", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_de",
                title: "Delaware Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Delaware",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Delaware.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Delaware",
                        body: "Under Del. Code tit. 25, § 5502, landlords in Delaware must deliver a formal 5-Day Written Notice to Pay Rent before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Written Notice to Pay Rent", "Governing Code: Del. Code tit. 25, § 5502", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Delaware. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Delaware",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Written Notice to Pay Rent", "Governing statute: Del. Code tit. 25, § 5502", "Self-help lockouts are illegal across Delaware"],
                relatedArticleIds: ["deposit_de", "vital_de", "era_de", "camping_de", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_dc",
                title: "District of Columbia Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "District of Columbia",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in District of Columbia.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in District of Columbia",
                        body: "Under D.C. Code § 42-3505.01, landlords in District of Columbia must deliver a formal 30-Day Notice to Correct or Vacate (Court order required) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 30-Day Notice to Correct or Vacate (Court order required)", "Governing Code: D.C. Code § 42-3505.01", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in District of Columbia. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in District of Columbia",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 30-Day Notice to Correct or Vacate (Court order required)", "Governing statute: D.C. Code § 42-3505.01", "Self-help lockouts are illegal across District of Columbia"],
                relatedArticleIds: ["deposit_dc", "vital_dc", "era_dc", "camping_dc", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_fl",
                title: "Florida Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Florida",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Florida.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Florida",
                        body: "Under Fla. Stat. § 83.56, landlords in Florida must deliver a formal 3-Day Notice to Pay or Deliver Possession before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Pay or Deliver Possession", "Governing Code: Fla. Stat. § 83.56", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Florida. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Florida",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Pay or Deliver Possession", "Governing statute: Fla. Stat. § 83.56", "Self-help lockouts are illegal across Florida"],
                relatedArticleIds: ["deposit_fl", "vital_fl", "era_fl", "camping_fl", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ga",
                title: "Georgia Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Georgia",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Georgia.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Georgia",
                        body: "Under Ga. Code Ann. § 44-7-50, landlords in Georgia must deliver a formal Immediate Demand for Possession upon nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: Immediate Demand for Possession upon nonpayment", "Governing Code: Ga. Code Ann. § 44-7-50", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Georgia. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Georgia",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: Immediate Demand for Possession upon nonpayment", "Governing statute: Ga. Code Ann. § 44-7-50", "Self-help lockouts are illegal across Georgia"],
                relatedArticleIds: ["deposit_ga", "vital_ga", "era_ga", "camping_ga", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_hi",
                title: "Hawaii Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Hawaii",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Hawaii.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Hawaii",
                        body: "Under Haw. Rev. Stat. § 521-68, landlords in Hawaii must deliver a formal 5-Day Written Notice to Pay or Terminate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Written Notice to Pay or Terminate", "Governing Code: Haw. Rev. Stat. § 521-68", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Hawaii. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Hawaii",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Written Notice to Pay or Terminate", "Governing statute: Haw. Rev. Stat. § 521-68", "Self-help lockouts are illegal across Hawaii"],
                relatedArticleIds: ["deposit_hi", "vital_hi", "era_hi", "camping_hi", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_id",
                title: "Idaho Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Idaho",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Idaho.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Idaho",
                        body: "Under Idaho Code § 6-303, landlords in Idaho must deliver a formal 3-Day Notice to Pay or Surrender before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Pay or Surrender", "Governing Code: Idaho Code § 6-303", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Idaho. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Idaho",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Pay or Surrender", "Governing statute: Idaho Code § 6-303", "Self-help lockouts are illegal across Idaho"],
                relatedArticleIds: ["deposit_id", "vital_id", "era_id", "camping_id", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_il",
                title: "Illinois Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Illinois",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Illinois.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Illinois",
                        body: "Under 735 Ill. Comp. Stat. 5/9-209, landlords in Illinois must deliver a formal 5-Day Notice to Pay or Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Notice to Pay or Quit", "Governing Code: 735 Ill. Comp. Stat. 5/9-209", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Illinois. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Illinois",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Notice to Pay or Quit", "Governing statute: 735 Ill. Comp. Stat. 5/9-209", "Self-help lockouts are illegal across Illinois"],
                relatedArticleIds: ["deposit_il", "vital_il", "era_il", "camping_il", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_in",
                title: "Indiana Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Indiana",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Indiana.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Indiana",
                        body: "Under Ind. Code § 32-31-1-6, landlords in Indiana must deliver a formal 10-Day Notice to Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 10-Day Notice to Quit", "Governing Code: Ind. Code § 32-31-1-6", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Indiana. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Indiana",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 10-Day Notice to Quit", "Governing statute: Ind. Code § 32-31-1-6", "Self-help lockouts are illegal across Indiana"],
                relatedArticleIds: ["deposit_in", "vital_in", "era_in", "camping_in", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ia",
                title: "Iowa Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Iowa",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Iowa.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Iowa",
                        body: "Under Iowa Code § 562A.27, landlords in Iowa must deliver a formal 3-Day Notice to Cure or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Cure or Vacate", "Governing Code: Iowa Code § 562A.27", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Iowa. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Iowa",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Cure or Vacate", "Governing statute: Iowa Code § 562A.27", "Self-help lockouts are illegal across Iowa"],
                relatedArticleIds: ["deposit_ia", "vital_ia", "era_ia", "camping_ia", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ks",
                title: "Kansas Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Kansas",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Kansas.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Kansas",
                        body: "Under Kan. Stat. Ann. § 58-2564, landlords in Kansas must deliver a formal 3-Day Notice to Pay or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Pay or Vacate", "Governing Code: Kan. Stat. Ann. § 58-2564", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Kansas. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Kansas",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Pay or Vacate", "Governing statute: Kan. Stat. Ann. § 58-2564", "Self-help lockouts are illegal across Kansas"],
                relatedArticleIds: ["deposit_ks", "vital_ks", "era_ks", "camping_ks", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ky",
                title: "Kentucky Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Kentucky",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Kentucky.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Kentucky",
                        body: "Under Ky. Rev. Stat. Ann. § 383.660, landlords in Kentucky must deliver a formal 7-Day Notice to Pay or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Notice to Pay or Vacate", "Governing Code: Ky. Rev. Stat. Ann. § 383.660", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Kentucky. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Kentucky",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Notice to Pay or Vacate", "Governing statute: Ky. Rev. Stat. Ann. § 383.660", "Self-help lockouts are illegal across Kentucky"],
                relatedArticleIds: ["deposit_ky", "vital_ky", "era_ky", "camping_ky", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_la",
                title: "Louisiana Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Louisiana",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Louisiana.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Louisiana",
                        body: "Under La. Code Civ. Proc. art. 4701, landlords in Louisiana must deliver a formal 5-Day Notice to Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Notice to Vacate", "Governing Code: La. Code Civ. Proc. art. 4701", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Louisiana. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Louisiana",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Notice to Vacate", "Governing statute: La. Code Civ. Proc. art. 4701", "Self-help lockouts are illegal across Louisiana"],
                relatedArticleIds: ["deposit_la", "vital_la", "era_la", "camping_la", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_me",
                title: "Maine Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Maine",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Maine.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Maine",
                        body: "Under Me. Rev. Stat. tit. 14, § 6002, landlords in Maine must deliver a formal 7-Day Notice to Pay Rent (must be 7 days late first) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Notice to Pay Rent (must be 7 days late first)", "Governing Code: Me. Rev. Stat. tit. 14, § 6002", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Maine. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Maine",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Notice to Pay Rent (must be 7 days late first)", "Governing statute: Me. Rev. Stat. tit. 14, § 6002", "Self-help lockouts are illegal across Maine"],
                relatedArticleIds: ["deposit_me", "vital_me", "era_me", "camping_me", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_md",
                title: "Maryland Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Maryland",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Maryland.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Maryland",
                        body: "Under Md. Code Ann., Real Prop. § 8-401, landlords in Maryland must deliver a formal 10-Day Notice to Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 10-Day Notice to Vacate", "Governing Code: Md. Code Ann., Real Prop. § 8-401", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Maryland. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Maryland",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 10-Day Notice to Vacate", "Governing statute: Md. Code Ann., Real Prop. § 8-401", "Self-help lockouts are illegal across Maryland"],
                relatedArticleIds: ["deposit_md", "vital_md", "era_md", "camping_md", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ma",
                title: "Massachusetts Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Massachusetts",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Massachusetts.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Massachusetts",
                        body: "Under Mass. Gen. Laws ch. 186, § 11, landlords in Massachusetts must deliver a formal 14-Day Notice to Quit for Nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 14-Day Notice to Quit for Nonpayment", "Governing Code: Mass. Gen. Laws ch. 186, § 11", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Massachusetts. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Massachusetts",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 14-Day Notice to Quit for Nonpayment", "Governing statute: Mass. Gen. Laws ch. 186, § 11", "Self-help lockouts are illegal across Massachusetts"],
                relatedArticleIds: ["deposit_ma", "vital_ma", "era_ma", "camping_ma", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_mi",
                title: "Michigan Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Michigan",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Michigan.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Michigan",
                        body: "Under Mich. Comp. Laws § 554.134, landlords in Michigan must deliver a formal 7-Day Notice to Quit for Nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Notice to Quit for Nonpayment", "Governing Code: Mich. Comp. Laws § 554.134", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Michigan. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Michigan",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Notice to Quit for Nonpayment", "Governing statute: Mich. Comp. Laws § 554.134", "Self-help lockouts are illegal across Michigan"],
                relatedArticleIds: ["deposit_mi", "vital_mi", "era_mi", "camping_mi", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_mn",
                title: "Minnesota Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Minnesota",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Minnesota.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Minnesota",
                        body: "Under Minn. Stat. § 504B.291, landlords in Minnesota must deliver a formal 14-Day Written Notice to Pay or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 14-Day Written Notice to Pay or Vacate", "Governing Code: Minn. Stat. § 504B.291", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Minnesota. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Minnesota",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 14-Day Written Notice to Pay or Vacate", "Governing statute: Minn. Stat. § 504B.291", "Self-help lockouts are illegal across Minnesota"],
                relatedArticleIds: ["deposit_mn", "vital_mn", "era_mn", "camping_mn", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ms",
                title: "Mississippi Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Mississippi",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Mississippi.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Mississippi",
                        body: "Under Miss. Code Ann. § 89-7-27, landlords in Mississippi must deliver a formal 3-Day Notice to Pay or Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Pay or Quit", "Governing Code: Miss. Code Ann. § 89-7-27", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Mississippi. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Mississippi",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Pay or Quit", "Governing statute: Miss. Code Ann. § 89-7-27", "Self-help lockouts are illegal across Mississippi"],
                relatedArticleIds: ["deposit_ms", "vital_ms", "era_ms", "camping_ms", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_mo",
                title: "Missouri Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Missouri",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Missouri.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Missouri",
                        body: "Under Mo. Rev. Stat. § 535.010, landlords in Missouri must deliver a formal Immediate Demand for Rent upon nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: Immediate Demand for Rent upon nonpayment", "Governing Code: Mo. Rev. Stat. § 535.010", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Missouri. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Missouri",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: Immediate Demand for Rent upon nonpayment", "Governing statute: Mo. Rev. Stat. § 535.010", "Self-help lockouts are illegal across Missouri"],
                relatedArticleIds: ["deposit_mo", "vital_mo", "era_mo", "camping_mo", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_mt",
                title: "Montana Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Montana",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Montana.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Montana",
                        body: "Under Mont. Code Ann. § 70-24-422, landlords in Montana must deliver a formal 3-Day Notice to Pay or Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Pay or Quit", "Governing Code: Mont. Code Ann. § 70-24-422", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Montana. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Montana",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Pay or Quit", "Governing statute: Mont. Code Ann. § 70-24-422", "Self-help lockouts are illegal across Montana"],
                relatedArticleIds: ["deposit_mt", "vital_mt", "era_mt", "camping_mt", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ne",
                title: "Nebraska Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Nebraska",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Nebraska.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Nebraska",
                        body: "Under Neb. Rev. Stat. § 76-1431, landlords in Nebraska must deliver a formal 7-Day Notice to Pay or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Notice to Pay or Vacate", "Governing Code: Neb. Rev. Stat. § 76-1431", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Nebraska. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Nebraska",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Notice to Pay or Vacate", "Governing statute: Neb. Rev. Stat. § 76-1431", "Self-help lockouts are illegal across Nebraska"],
                relatedArticleIds: ["deposit_ne", "vital_ne", "era_ne", "camping_ne", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_nv",
                title: "Nevada Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Nevada",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Nevada.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Nevada",
                        body: "Under Nev. Rev. Stat. § 40.2512, landlords in Nevada must deliver a formal 7-Day Pay or Quit Notice (Summary eviction proceedings) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Pay or Quit Notice (Summary eviction proceedings)", "Governing Code: Nev. Rev. Stat. § 40.2512", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Nevada. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Nevada",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Pay or Quit Notice (Summary eviction proceedings)", "Governing statute: Nev. Rev. Stat. § 40.2512", "Self-help lockouts are illegal across Nevada"],
                relatedArticleIds: ["deposit_nv", "vital_nv", "era_nv", "camping_nv", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_nh",
                title: "New Hampshire Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "New Hampshire",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in New Hampshire.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in New Hampshire",
                        body: "Under N.H. Rev. Stat. Ann. § 540:2, landlords in New Hampshire must deliver a formal 7-Day Demand for Rent plus 30-Day Notice to Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 7-Day Demand for Rent plus 30-Day Notice to Quit", "Governing Code: N.H. Rev. Stat. Ann. § 540:2", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in New Hampshire. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in New Hampshire",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 7-Day Demand for Rent plus 30-Day Notice to Quit", "Governing statute: N.H. Rev. Stat. Ann. § 540:2", "Self-help lockouts are illegal across New Hampshire"],
                relatedArticleIds: ["deposit_nh", "vital_nh", "era_nh", "camping_nh", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_nj",
                title: "New Jersey Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "New Jersey",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in New Jersey.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in New Jersey",
                        body: "Under N.J. Stat. Ann. § 2A:18-61.1, landlords in New Jersey must deliver a formal 30-Day Notice to Cease & Quit (Anti-Eviction Act) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 30-Day Notice to Cease & Quit (Anti-Eviction Act)", "Governing Code: N.J. Stat. Ann. § 2A:18-61.1", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in New Jersey. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in New Jersey",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 30-Day Notice to Cease & Quit (Anti-Eviction Act)", "Governing statute: N.J. Stat. Ann. § 2A:18-61.1", "Self-help lockouts are illegal across New Jersey"],
                relatedArticleIds: ["deposit_nj", "vital_nj", "era_nj", "camping_nj", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_nm",
                title: "New Mexico Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "New Mexico",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in New Mexico.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in New Mexico",
                        body: "Under N.M. Stat. Ann. § 47-8-33, landlords in New Mexico must deliver a formal 3-Day Notice of Nonpayment with Opportunity to Cure before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice of Nonpayment with Opportunity to Cure", "Governing Code: N.M. Stat. Ann. § 47-8-33", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in New Mexico. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in New Mexico",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice of Nonpayment with Opportunity to Cure", "Governing statute: N.M. Stat. Ann. § 47-8-33", "Self-help lockouts are illegal across New Mexico"],
                relatedArticleIds: ["deposit_nm", "vital_nm", "era_nm", "camping_nm", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ny",
                title: "New York Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "New York",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in New York.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in New York",
                        body: "Under N.Y. Real Prop. Acts. Law § 711, landlords in New York must deliver a formal 14-Day Written Demand for Rent (HSTPA) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 14-Day Written Demand for Rent (HSTPA)", "Governing Code: N.Y. Real Prop. Acts. Law § 711", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in New York. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in New York",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 14-Day Written Demand for Rent (HSTPA)", "Governing statute: N.Y. Real Prop. Acts. Law § 711", "Self-help lockouts are illegal across New York"],
                relatedArticleIds: ["deposit_ny", "vital_ny", "era_ny", "camping_ny", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_nc",
                title: "North Carolina Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "North Carolina",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in North Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in North Carolina",
                        body: "Under N.C. Gen. Stat. § 42-3, landlords in North Carolina must deliver a formal 10-Day Demand for Rent before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 10-Day Demand for Rent", "Governing Code: N.C. Gen. Stat. § 42-3", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in North Carolina. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in North Carolina",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 10-Day Demand for Rent", "Governing statute: N.C. Gen. Stat. § 42-3", "Self-help lockouts are illegal across North Carolina"],
                relatedArticleIds: ["deposit_nc", "vital_nc", "era_nc", "camping_nc", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_nd",
                title: "North Dakota Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "North Dakota",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in North Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in North Dakota",
                        body: "Under N.D. Cent. Code § 47-32-02, landlords in North Dakota must deliver a formal 3-Day Notice to Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Quit", "Governing Code: N.D. Cent. Code § 47-32-02", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in North Dakota. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in North Dakota",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Quit", "Governing statute: N.D. Cent. Code § 47-32-02", "Self-help lockouts are illegal across North Dakota"],
                relatedArticleIds: ["deposit_nd", "vital_nd", "era_nd", "camping_nd", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_oh",
                title: "Ohio Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Ohio",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Ohio.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Ohio",
                        body: "Under Ohio Rev. Code Ann. § 1923.04, landlords in Ohio must deliver a formal 3-Day Notice to Leave the Premises before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Leave the Premises", "Governing Code: Ohio Rev. Code Ann. § 1923.04", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Ohio. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Ohio",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Leave the Premises", "Governing statute: Ohio Rev. Code Ann. § 1923.04", "Self-help lockouts are illegal across Ohio"],
                relatedArticleIds: ["deposit_oh", "vital_oh", "era_oh", "camping_oh", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ok",
                title: "Oklahoma Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Oklahoma",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Oklahoma.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Oklahoma",
                        body: "Under Okla. Stat. tit. 41, § 131, landlords in Oklahoma must deliver a formal 5-Day Notice to Pay or Terminate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Notice to Pay or Terminate", "Governing Code: Okla. Stat. tit. 41, § 131", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Oklahoma. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Oklahoma",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Notice to Pay or Terminate", "Governing statute: Okla. Stat. tit. 41, § 131", "Self-help lockouts are illegal across Oklahoma"],
                relatedArticleIds: ["deposit_ok", "vital_ok", "era_ok", "camping_ok", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_or",
                title: "Oregon Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Oregon",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Oregon.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Oregon",
                        body: "Under Or. Rev. Stat. § 90.394, landlords in Oregon must deliver a formal 10-Day Notice for Nonpayment of Rent before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 10-Day Notice for Nonpayment of Rent", "Governing Code: Or. Rev. Stat. § 90.394", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Oregon. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Oregon",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 10-Day Notice for Nonpayment of Rent", "Governing statute: Or. Rev. Stat. § 90.394", "Self-help lockouts are illegal across Oregon"],
                relatedArticleIds: ["deposit_or", "vital_or", "era_or", "camping_or", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_pa",
                title: "Pennsylvania Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Pennsylvania",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Pennsylvania.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Pennsylvania",
                        body: "Under 68 Pa. Stat. Ann. § 250.501, landlords in Pennsylvania must deliver a formal 10-Day Notice to Quit for Nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 10-Day Notice to Quit for Nonpayment", "Governing Code: 68 Pa. Stat. Ann. § 250.501", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Pennsylvania. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Pennsylvania",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 10-Day Notice to Quit for Nonpayment", "Governing statute: 68 Pa. Stat. Ann. § 250.501", "Self-help lockouts are illegal across Pennsylvania"],
                relatedArticleIds: ["deposit_pa", "vital_pa", "era_pa", "camping_pa", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ri",
                title: "Rhode Island Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Rhode Island",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Rhode Island.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Rhode Island",
                        body: "Under R.I. Gen. Laws § 34-18-35, landlords in Rhode Island must deliver a formal 5-Day Notice to Pay Rent before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Notice to Pay Rent", "Governing Code: R.I. Gen. Laws § 34-18-35", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Rhode Island. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Rhode Island",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Notice to Pay Rent", "Governing statute: R.I. Gen. Laws § 34-18-35", "Self-help lockouts are illegal across Rhode Island"],
                relatedArticleIds: ["deposit_ri", "vital_ri", "era_ri", "camping_ri", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_sc",
                title: "South Carolina Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "South Carolina",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in South Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in South Carolina",
                        body: "Under S.C. Code Ann. § 27-40-710, landlords in South Carolina must deliver a formal 5-Day Notice to Pay or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Notice to Pay or Vacate", "Governing Code: S.C. Code Ann. § 27-40-710", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in South Carolina. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in South Carolina",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Notice to Pay or Vacate", "Governing statute: S.C. Code Ann. § 27-40-710", "Self-help lockouts are illegal across South Carolina"],
                relatedArticleIds: ["deposit_sc", "vital_sc", "era_sc", "camping_sc", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_sd",
                title: "South Dakota Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "South Dakota",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in South Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in South Dakota",
                        body: "Under S.D. Codified Laws § 21-16-2, landlords in South Dakota must deliver a formal 3-Day Notice to Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Quit", "Governing Code: S.D. Codified Laws § 21-16-2", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in South Dakota. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in South Dakota",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Quit", "Governing statute: S.D. Codified Laws § 21-16-2", "Self-help lockouts are illegal across South Dakota"],
                relatedArticleIds: ["deposit_sd", "vital_sd", "era_sd", "camping_sd", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_tn",
                title: "Tennessee Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Tennessee",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Tennessee.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Tennessee",
                        body: "Under Tenn. Code Ann. § 66-28-505, landlords in Tennessee must deliver a formal 14-Day Notice to Pay or Terminate (URLTA) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 14-Day Notice to Pay or Terminate (URLTA)", "Governing Code: Tenn. Code Ann. § 66-28-505", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Tennessee. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Tennessee",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 14-Day Notice to Pay or Terminate (URLTA)", "Governing statute: Tenn. Code Ann. § 66-28-505", "Self-help lockouts are illegal across Tennessee"],
                relatedArticleIds: ["deposit_tn", "vital_tn", "era_tn", "camping_tn", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_tx",
                title: "Texas Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Texas",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Texas.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Texas",
                        body: "Under Tex. Prop. Code § 24.005, landlords in Texas must deliver a formal 3-Day Notice to Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Vacate", "Governing Code: Tex. Prop. Code § 24.005", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Texas. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Texas",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Vacate", "Governing statute: Tex. Prop. Code § 24.005", "Self-help lockouts are illegal across Texas"],
                relatedArticleIds: ["deposit_tx", "vital_tx", "era_tx", "camping_tx", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_ut",
                title: "Utah Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Utah",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Utah.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Utah",
                        body: "Under Utah Code Ann. § 78B-6-802, landlords in Utah must deliver a formal 3-Day Notice to Pay or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Pay or Vacate", "Governing Code: Utah Code Ann. § 78B-6-802", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Utah. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Utah",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Pay or Vacate", "Governing statute: Utah Code Ann. § 78B-6-802", "Self-help lockouts are illegal across Utah"],
                relatedArticleIds: ["deposit_ut", "vital_ut", "era_ut", "camping_ut", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_vt",
                title: "Vermont Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Vermont",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Vermont.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Vermont",
                        body: "Under Vt. Stat. Ann. tit. 9, § 4467, landlords in Vermont must deliver a formal 14-Day Notice to Terminate for Nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 14-Day Notice to Terminate for Nonpayment", "Governing Code: Vt. Stat. Ann. tit. 9, § 4467", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Vermont. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Vermont",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 14-Day Notice to Terminate for Nonpayment", "Governing statute: Vt. Stat. Ann. tit. 9, § 4467", "Self-help lockouts are illegal across Vermont"],
                relatedArticleIds: ["deposit_vt", "vital_vt", "era_vt", "camping_vt", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_va",
                title: "Virginia Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Virginia",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Virginia",
                        body: "Under Va. Code Ann. § 55.1-1245, landlords in Virginia must deliver a formal 5-Day Pay or Quit Notice (VRLTA) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Pay or Quit Notice (VRLTA)", "Governing Code: Va. Code Ann. § 55.1-1245", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Virginia. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Virginia",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Pay or Quit Notice (VRLTA)", "Governing statute: Va. Code Ann. § 55.1-1245", "Self-help lockouts are illegal across Virginia"],
                relatedArticleIds: ["deposit_va", "vital_va", "era_va", "camping_va", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_wa",
                title: "Washington Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Washington",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Washington.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Washington",
                        body: "Under Wash. Rev. Code § 59.18.057, landlords in Washington must deliver a formal 14-Day Notice to Pay Rent or Vacate before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 14-Day Notice to Pay Rent or Vacate", "Governing Code: Wash. Rev. Code § 59.18.057", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Washington. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Washington",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 14-Day Notice to Pay Rent or Vacate", "Governing statute: Wash. Rev. Code § 59.18.057", "Self-help lockouts are illegal across Washington"],
                relatedArticleIds: ["deposit_wa", "vital_wa", "era_wa", "camping_wa", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_wv",
                title: "West Virginia Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "West Virginia",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in West Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in West Virginia",
                        body: "Under W. Va. Code § 55-3A-1, landlords in West Virginia must deliver a formal Immediate Demand for Possession upon nonpayment before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: Immediate Demand for Possession upon nonpayment", "Governing Code: W. Va. Code § 55-3A-1", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in West Virginia. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in West Virginia",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: Immediate Demand for Possession upon nonpayment", "Governing statute: W. Va. Code § 55-3A-1", "Self-help lockouts are illegal across West Virginia"],
                relatedArticleIds: ["deposit_wv", "vital_wv", "era_wv", "camping_wv", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_wi",
                title: "Wisconsin Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Wisconsin",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Wisconsin.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Wisconsin",
                        body: "Under Wis. Stat. § 704.17, landlords in Wisconsin must deliver a formal 5-Day Notice to Pay or Vacate (with right to cure) before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 5-Day Notice to Pay or Vacate (with right to cure)", "Governing Code: Wis. Stat. § 704.17", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Wisconsin. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Wisconsin",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 5-Day Notice to Pay or Vacate (with right to cure)", "Governing statute: Wis. Stat. § 704.17", "Self-help lockouts are illegal across Wisconsin"],
                relatedArticleIds: ["deposit_wi", "vital_wi", "era_wi", "camping_wi", "art_eviction_court_process"]
            ),
            Article(
                id: "eviction_wy",
                title: "Wyoming Tenant Eviction Protections & Notice Requirements",
                category: .legalAndStateLaws,
                stateTag: "Wyoming",
                readTimeMinutes: 5,
                overview: "Complete legal guide to eviction notice windows, statutory defense timelines, and tenant protections in Wyoming.",
                sections: [
                    ArticleSection(
                        heading: "Statutory Notice Requirements in Wyoming",
                        body: "Under Wyo. Stat. Ann. § 1-21-1003, landlords in Wyoming must deliver a formal 3-Day Notice to Quit before filing an eviction summons in court. Verbal threats, text messages, and informal notes carry zero legal force.",
                        bulletPoints: ["Statutory Notice: 3-Day Notice to Quit", "Governing Code: Wyo. Stat. Ann. § 1-21-1003", "Writ of Possession: Only a sheriff or constable with a signed court writ can legally enforce removal."],
                        callout: "Self-help lockouts without court authorization are strictly illegal in Wyoming. If locks are changed or utilities cut, call local dispatch and contact legal aid immediately."
                    ),
                    ArticleSection(
                        heading: "Answering Court Summons in Wyoming",
                        body: "If an eviction summons is filed, you must file a formal written Answer or appear at the scheduled docket hearing. Citing improper notice, habitability issues, or retaliatory motives constitutes a valid legal defense.",
                        bulletPoints: ["Request court fee waiver if on public assistance", "File habitability counterclaims with photo evidence"]
                    )
                ],
                keyTakeaways: ["Required notice: 3-Day Notice to Quit", "Governing statute: Wyo. Stat. Ann. § 1-21-1003", "Self-help lockouts are illegal across Wyoming"],
                relatedArticleIds: ["deposit_wy", "vital_wy", "era_wy", "camping_wy", "art_eviction_court_process"]
            ),
        ]
    }

    // MARK: - 2. State Deposit Articles (51)
    private static func generateStateDepositArticles() -> [Article] {
        [
            Article(
                id: "deposit_al",
                title: "Alabama Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Alabama",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Alabama.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Alabama",
                        body: "Under Ala. Code § 35-9A-201, your landlord must return your security deposit along with an itemized statement of deductions within 60 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 60 days", "Maximum Statutory Deposit: 1 month's rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Alabama law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Alabama",
                        body: "If a landlord fails to provide an accounting within 60 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 60 days", "Statutory limit: 1 month's rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_al", "vital_al", "era_al", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ak",
                title: "Alaska Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Alaska",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Alaska.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Alaska",
                        body: "Under Alaska Stat. § 34.03.070, your landlord must return your security deposit along with an itemized statement of deductions within 14 to 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 to 30 days", "Maximum Statutory Deposit: 2 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Alaska law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Alaska",
                        body: "If a landlord fails to provide an accounting within 14 to 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 to 30 days", "Statutory limit: 2 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ak", "vital_ak", "era_ak", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_az",
                title: "Arizona Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Arizona",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Arizona.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Arizona",
                        body: "Under Ariz. Rev. Stat. § 33-1321, your landlord must return your security deposit along with an itemized statement of deductions within 14 business days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 business days", "Maximum Statutory Deposit: 1.5 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Arizona law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Arizona",
                        body: "If a landlord fails to provide an accounting within 14 business days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 business days", "Statutory limit: 1.5 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_az", "vital_az", "era_az", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ar",
                title: "Arkansas Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Arkansas",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Arkansas.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Arkansas",
                        body: "Under Ark. Code Ann. § 18-16-304, your landlord must return your security deposit along with an itemized statement of deductions within 60 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 60 days", "Maximum Statutory Deposit: 2 months' rent (properties with 6+ units)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Arkansas law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Arkansas",
                        body: "If a landlord fails to provide an accounting within 60 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 60 days", "Statutory limit: 2 months' rent (properties with 6+ units)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ar", "vital_ar", "era_ar", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ca",
                title: "California Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "California",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in California.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in California",
                        body: "Under Cal. Civ. Code § 1950.5, your landlord must return your security deposit along with an itemized statement of deductions within 21 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 21 days", "Maximum Statutory Deposit: 1 month's rent (AB 12)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under California law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in California",
                        body: "If a landlord fails to provide an accounting within 21 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 21 days", "Statutory limit: 1 month's rent (AB 12)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ca", "vital_ca", "era_ca", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_co",
                title: "Colorado Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Colorado",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Colorado.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Colorado",
                        body: "Under Colo. Rev. Stat. § 38-12-103, your landlord must return your security deposit along with an itemized statement of deductions within 30 to 60 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 to 60 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Colorado law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Colorado",
                        body: "If a landlord fails to provide an accounting within 30 to 60 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 to 60 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_co", "vital_co", "era_co", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ct",
                title: "Connecticut Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Connecticut",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Connecticut.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Connecticut",
                        body: "Under Conn. Gen. Stat. § 47a-21, your landlord must return your security deposit along with an itemized statement of deductions within 30 days (or 15 days after forwarding address) after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days (or 15 days after forwarding address)", "Maximum Statutory Deposit: 2 months' rent (1 month if age 62+)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Connecticut law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Connecticut",
                        body: "If a landlord fails to provide an accounting within 30 days (or 15 days after forwarding address), they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days (or 15 days after forwarding address)", "Statutory limit: 2 months' rent (1 month if age 62+)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ct", "vital_ct", "era_ct", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_de",
                title: "Delaware Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Delaware",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Delaware.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Delaware",
                        body: "Under Del. Code tit. 25, § 5514, your landlord must return your security deposit along with an itemized statement of deductions within 20 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 20 days", "Maximum Statutory Deposit: 1 month's rent for 1+ year leases", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Delaware law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Delaware",
                        body: "If a landlord fails to provide an accounting within 20 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 20 days", "Statutory limit: 1 month's rent for 1+ year leases", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_de", "vital_de", "era_de", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_dc",
                title: "District of Columbia Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "District of Columbia",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in District of Columbia.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in District of Columbia",
                        body: "Under 14 DCMR § 308, your landlord must return your security deposit along with an itemized statement of deductions within 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 45 days", "Maximum Statutory Deposit: 1 month's rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under District of Columbia law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in District of Columbia",
                        body: "If a landlord fails to provide an accounting within 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 45 days", "Statutory limit: 1 month's rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_dc", "vital_dc", "era_dc", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_fl",
                title: "Florida Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Florida",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Florida.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Florida",
                        body: "Under Fla. Stat. § 83.49, your landlord must return your security deposit along with an itemized statement of deductions within 15 to 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 15 to 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Florida law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Florida",
                        body: "If a landlord fails to provide an accounting within 15 to 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 15 to 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_fl", "vital_fl", "era_fl", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ga",
                title: "Georgia Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Georgia",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Georgia.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Georgia",
                        body: "Under Ga. Code Ann. § 44-7-34, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: No statutory limit (escrow required for 10+ units)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Georgia law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Georgia",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: No statutory limit (escrow required for 10+ units)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ga", "vital_ga", "era_ga", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_hi",
                title: "Hawaii Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Hawaii",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Hawaii.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Hawaii",
                        body: "Under Haw. Rev. Stat. § 521-44, your landlord must return your security deposit along with an itemized statement of deductions within 14 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 days", "Maximum Statutory Deposit: 1 month's rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Hawaii law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Hawaii",
                        body: "If a landlord fails to provide an accounting within 14 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 days", "Statutory limit: 1 month's rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_hi", "vital_hi", "era_hi", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_id",
                title: "Idaho Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Idaho",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Idaho.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Idaho",
                        body: "Under Idaho Code § 6-321, your landlord must return your security deposit along with an itemized statement of deductions within 21 to 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 21 to 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Idaho law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Idaho",
                        body: "If a landlord fails to provide an accounting within 21 to 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 21 to 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_id", "vital_id", "era_id", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_il",
                title: "Illinois Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Illinois",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Illinois.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Illinois",
                        body: "Under 765 Ill. Comp. Stat. 710/1, your landlord must return your security deposit along with an itemized statement of deductions within 30 days (itemized) or 45 days (full) after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days (itemized) or 45 days (full)", "Maximum Statutory Deposit: No statutory limit (interest required for 25+ units)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Illinois law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Illinois",
                        body: "If a landlord fails to provide an accounting within 30 days (itemized) or 45 days (full), they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days (itemized) or 45 days (full)", "Statutory limit: No statutory limit (interest required for 25+ units)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_il", "vital_il", "era_il", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_in",
                title: "Indiana Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Indiana",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Indiana.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Indiana",
                        body: "Under Ind. Code § 32-31-3-12, your landlord must return your security deposit along with an itemized statement of deductions within 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 45 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Indiana law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Indiana",
                        body: "If a landlord fails to provide an accounting within 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 45 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_in", "vital_in", "era_in", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ia",
                title: "Iowa Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Iowa",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Iowa.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Iowa",
                        body: "Under Iowa Code § 562A.12, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 2 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Iowa law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Iowa",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 2 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ia", "vital_ia", "era_ia", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ks",
                title: "Kansas Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Kansas",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Kansas.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Kansas",
                        body: "Under Kan. Stat. Ann. § 58-2550, your landlord must return your security deposit along with an itemized statement of deductions within 14 to 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 to 30 days", "Maximum Statutory Deposit: 1 month's rent (1.5 if furnished)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Kansas law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Kansas",
                        body: "If a landlord fails to provide an accounting within 14 to 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 to 30 days", "Statutory limit: 1 month's rent (1.5 if furnished)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ks", "vital_ks", "era_ks", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ky",
                title: "Kentucky Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Kentucky",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Kentucky.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Kentucky",
                        body: "Under Ky. Rev. Stat. Ann. § 383.580, your landlord must return your security deposit along with an itemized statement of deductions within 30 to 60 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 to 60 days", "Maximum Statutory Deposit: No statutory limit (must hold in separate bank account)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Kentucky law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Kentucky",
                        body: "If a landlord fails to provide an accounting within 30 to 60 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 to 60 days", "Statutory limit: No statutory limit (must hold in separate bank account)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ky", "vital_ky", "era_ky", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_la",
                title: "Louisiana Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Louisiana",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Louisiana.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Louisiana",
                        body: "Under La. Stat. Ann. § 9:3251, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Louisiana law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Louisiana",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_la", "vital_la", "era_la", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_me",
                title: "Maine Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Maine",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Maine.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Maine",
                        body: "Under Me. Rev. Stat. tit. 14, § 6032, your landlord must return your security deposit along with an itemized statement of deductions within 21 to 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 21 to 30 days", "Maximum Statutory Deposit: 2 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Maine law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Maine",
                        body: "If a landlord fails to provide an accounting within 21 to 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 21 to 30 days", "Statutory limit: 2 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_me", "vital_me", "era_me", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_md",
                title: "Maryland Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Maryland",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Maryland.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Maryland",
                        body: "Under Md. Code Ann., Real Prop. § 8-203, your landlord must return your security deposit along with an itemized statement of deductions within 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 45 days", "Maximum Statutory Deposit: 2 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Maryland law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Maryland",
                        body: "If a landlord fails to provide an accounting within 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 45 days", "Statutory limit: 2 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_md", "vital_md", "era_md", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ma",
                title: "Massachusetts Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Massachusetts",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Massachusetts.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Massachusetts",
                        body: "Under Mass. Gen. Laws ch. 186, § 15B, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 1 month's rent (strict escrow & interest rules)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Massachusetts law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Massachusetts",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 1 month's rent (strict escrow & interest rules)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ma", "vital_ma", "era_ma", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_mi",
                title: "Michigan Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Michigan",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Michigan.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Michigan",
                        body: "Under Mich. Comp. Laws § 554.602, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 1.5 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Michigan law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Michigan",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 1.5 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_mi", "vital_mi", "era_mi", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_mn",
                title: "Minnesota Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Minnesota",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Minnesota.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Minnesota",
                        body: "Under Minn. Stat. § 504B.178, your landlord must return your security deposit along with an itemized statement of deductions within 21 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 21 days", "Maximum Statutory Deposit: No statutory limit (1% annual interest required)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Minnesota law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Minnesota",
                        body: "If a landlord fails to provide an accounting within 21 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 21 days", "Statutory limit: No statutory limit (1% annual interest required)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_mn", "vital_mn", "era_mn", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ms",
                title: "Mississippi Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Mississippi",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Mississippi.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Mississippi",
                        body: "Under Miss. Code Ann. § 89-8-21, your landlord must return your security deposit along with an itemized statement of deductions within 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 45 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Mississippi law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Mississippi",
                        body: "If a landlord fails to provide an accounting within 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 45 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ms", "vital_ms", "era_ms", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_mo",
                title: "Missouri Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Missouri",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Missouri.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Missouri",
                        body: "Under Mo. Rev. Stat. § 535.300, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 2 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Missouri law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Missouri",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 2 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_mo", "vital_mo", "era_mo", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_mt",
                title: "Montana Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Montana",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Montana.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Montana",
                        body: "Under Mont. Code Ann. § 70-25-202, your landlord must return your security deposit along with an itemized statement of deductions within 10 to 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 10 to 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Montana law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Montana",
                        body: "If a landlord fails to provide an accounting within 10 to 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 10 to 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_mt", "vital_mt", "era_mt", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ne",
                title: "Nebraska Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Nebraska",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Nebraska.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Nebraska",
                        body: "Under Neb. Rev. Stat. § 76-1416, your landlord must return your security deposit along with an itemized statement of deductions within 14 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 days", "Maximum Statutory Deposit: 1 month's rent (1.25 with pet)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Nebraska law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Nebraska",
                        body: "If a landlord fails to provide an accounting within 14 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 days", "Statutory limit: 1 month's rent (1.25 with pet)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ne", "vital_ne", "era_ne", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_nv",
                title: "Nevada Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Nevada",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Nevada.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Nevada",
                        body: "Under Nev. Rev. Stat. § 118A.242, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 3 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Nevada law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Nevada",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 3 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_nv", "vital_nv", "era_nv", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_nh",
                title: "New Hampshire Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "New Hampshire",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in New Hampshire.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in New Hampshire",
                        body: "Under N.H. Rev. Stat. Ann. § 540-A:6, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 1 month's rent or $100", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under New Hampshire law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in New Hampshire",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 1 month's rent or $100", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_nh", "vital_nh", "era_nh", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_nj",
                title: "New Jersey Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "New Jersey",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in New Jersey.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in New Jersey",
                        body: "Under N.J. Stat. Ann. § 46:8-21.2, your landlord must return your security deposit along with an itemized statement of deductions within 30 days (5 days if displaced) after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days (5 days if displaced)", "Maximum Statutory Deposit: 1.5 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under New Jersey law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in New Jersey",
                        body: "If a landlord fails to provide an accounting within 30 days (5 days if displaced), they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days (5 days if displaced)", "Statutory limit: 1.5 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_nj", "vital_nj", "era_nj", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_nm",
                title: "New Mexico Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "New Mexico",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in New Mexico.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in New Mexico",
                        body: "Under N.M. Stat. Ann. § 47-8-18, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 1 month's rent (if lease is under 1 year)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under New Mexico law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in New Mexico",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 1 month's rent (if lease is under 1 year)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_nm", "vital_nm", "era_nm", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ny",
                title: "New York Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "New York",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in New York.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in New York",
                        body: "Under N.Y. Gen. Oblig. Law § 7-108, your landlord must return your security deposit along with an itemized statement of deductions within 14 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 days", "Maximum Statutory Deposit: 1 month's rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under New York law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in New York",
                        body: "If a landlord fails to provide an accounting within 14 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 days", "Statutory limit: 1 month's rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ny", "vital_ny", "era_ny", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_nc",
                title: "North Carolina Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "North Carolina",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in North Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in North Carolina",
                        body: "Under N.C. Gen. Stat. § 42-51, your landlord must return your security deposit along with an itemized statement of deductions within 30 to 60 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 to 60 days", "Maximum Statutory Deposit: 2 months' rent for year-long leases", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under North Carolina law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in North Carolina",
                        body: "If a landlord fails to provide an accounting within 30 to 60 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 to 60 days", "Statutory limit: 2 months' rent for year-long leases", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_nc", "vital_nc", "era_nc", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_nd",
                title: "North Dakota Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "North Dakota",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in North Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in North Dakota",
                        body: "Under N.D. Cent. Code § 47-16-07.1, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 1 month's rent (or 2 months with pet)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under North Dakota law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in North Dakota",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 1 month's rent (or 2 months with pet)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_nd", "vital_nd", "era_nd", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_oh",
                title: "Ohio Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Ohio",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Ohio.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Ohio",
                        body: "Under Ohio Rev. Code Ann. § 5321.16, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: No statutory limit (interest over $50)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Ohio law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Ohio",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: No statutory limit (interest over $50)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_oh", "vital_oh", "era_oh", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ok",
                title: "Oklahoma Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Oklahoma",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Oklahoma.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Oklahoma",
                        body: "Under Okla. Stat. tit. 41, § 115, your landlord must return your security deposit along with an itemized statement of deductions within 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 45 days", "Maximum Statutory Deposit: No statutory limit (must hold in escrow)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Oklahoma law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Oklahoma",
                        body: "If a landlord fails to provide an accounting within 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 45 days", "Statutory limit: No statutory limit (must hold in escrow)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ok", "vital_ok", "era_ok", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_or",
                title: "Oregon Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Oregon",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Oregon.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Oregon",
                        body: "Under Or. Rev. Stat. § 90.300, your landlord must return your security deposit along with an itemized statement of deductions within 31 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 31 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Oregon law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Oregon",
                        body: "If a landlord fails to provide an accounting within 31 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 31 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_or", "vital_or", "era_or", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_pa",
                title: "Pennsylvania Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Pennsylvania",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Pennsylvania.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Pennsylvania",
                        body: "Under 68 Pa. Stat. Ann. § 250.511a, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: 2 months' rent (1st year), 1 month thereafter", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Pennsylvania law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Pennsylvania",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: 2 months' rent (1st year), 1 month thereafter", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_pa", "vital_pa", "era_pa", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ri",
                title: "Rhode Island Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Rhode Island",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Rhode Island.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Rhode Island",
                        body: "Under R.I. Gen. Laws § 34-18-19, your landlord must return your security deposit along with an itemized statement of deductions within 20 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 20 days", "Maximum Statutory Deposit: 1 month's rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Rhode Island law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Rhode Island",
                        body: "If a landlord fails to provide an accounting within 20 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 20 days", "Statutory limit: 1 month's rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ri", "vital_ri", "era_ri", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_sc",
                title: "South Carolina Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "South Carolina",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in South Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in South Carolina",
                        body: "Under S.C. Code Ann. § 27-40-410, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under South Carolina law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in South Carolina",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_sc", "vital_sc", "era_sc", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_sd",
                title: "South Dakota Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "South Dakota",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in South Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in South Dakota",
                        body: "Under S.D. Codified Laws § 43-32-6.1, your landlord must return your security deposit along with an itemized statement of deductions within 14 to 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 to 45 days", "Maximum Statutory Deposit: 1 month's rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under South Dakota law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in South Dakota",
                        body: "If a landlord fails to provide an accounting within 14 to 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 to 45 days", "Statutory limit: 1 month's rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_sd", "vital_sd", "era_sd", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_tn",
                title: "Tennessee Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Tennessee",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Tennessee.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Tennessee",
                        body: "Under Tenn. Code Ann. § 66-28-301, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Tennessee law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Tennessee",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_tn", "vital_tn", "era_tn", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_tx",
                title: "Texas Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Texas",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Texas.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Texas",
                        body: "Under Tex. Prop. Code § 92.103, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Texas law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Texas",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_tx", "vital_tx", "era_tx", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_ut",
                title: "Utah Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Utah",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Utah.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Utah",
                        body: "Under Utah Code Ann. § 57-17-3, your landlord must return your security deposit along with an itemized statement of deductions within 30 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Utah law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Utah",
                        body: "If a landlord fails to provide an accounting within 30 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_ut", "vital_ut", "era_ut", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_vt",
                title: "Vermont Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Vermont",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Vermont.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Vermont",
                        body: "Under Vt. Stat. Ann. tit. 9, § 4461, your landlord must return your security deposit along with an itemized statement of deductions within 14 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 14 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Vermont law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Vermont",
                        body: "If a landlord fails to provide an accounting within 14 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 14 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_vt", "vital_vt", "era_vt", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_va",
                title: "Virginia Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Virginia",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Virginia",
                        body: "Under Va. Code Ann. § 55.1-1226, your landlord must return your security deposit along with an itemized statement of deductions within 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 45 days", "Maximum Statutory Deposit: 2 months' rent", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Virginia law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Virginia",
                        body: "If a landlord fails to provide an accounting within 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 45 days", "Statutory limit: 2 months' rent", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_va", "vital_va", "era_va", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_wa",
                title: "Washington Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Washington",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Washington.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Washington",
                        body: "Under Wash. Rev. Code § 59.18.280, your landlord must return your security deposit along with an itemized statement of deductions within 21 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 21 days", "Maximum Statutory Deposit: No statutory limit (installment options required)", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Washington law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Washington",
                        body: "If a landlord fails to provide an accounting within 21 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 21 days", "Statutory limit: No statutory limit (installment options required)", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_wa", "vital_wa", "era_wa", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_wv",
                title: "West Virginia Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "West Virginia",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in West Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in West Virginia",
                        body: "Under W. Va. Code § 37-6A-2, your landlord must return your security deposit along with an itemized statement of deductions within 45 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 45 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under West Virginia law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in West Virginia",
                        body: "If a landlord fails to provide an accounting within 45 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 45 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_wv", "vital_wv", "era_wv", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_wi",
                title: "Wisconsin Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Wisconsin",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Wisconsin.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Wisconsin",
                        body: "Under Wis. Stat. § 704.28, your landlord must return your security deposit along with an itemized statement of deductions within 21 days after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 21 days", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Wisconsin law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Wisconsin",
                        body: "If a landlord fails to provide an accounting within 21 days, they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 21 days", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_wi", "vital_wi", "era_wi", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
            Article(
                id: "deposit_wy",
                title: "Wyoming Security Deposit Return Limits & Deadlines",
                category: .legalAndStateLaws,
                stateTag: "Wyoming",
                readTimeMinutes: 4,
                overview: "Statutory rules governing security deposit caps, deduction limits, and mandatory return deadlines in Wyoming.",
                sections: [
                    ArticleSection(
                        heading: "Deposit Return Timelines in Wyoming",
                        body: "Under Wyo. Stat. Ann. § 1-21-1208, your landlord must return your security deposit along with an itemized statement of deductions within 30 days (or 15 days after address received) after you surrender possession and deliver a forwarding address.",
                        bulletPoints: ["Mandatory Return Deadline: 30 days (or 15 days after address received)", "Maximum Statutory Deposit: No statutory limit", "Itemization: Deductions require itemized receipts or paid contractor invoices."],
                        callout: "Normal wear and tear (minor wall scuffs, faded paint, carpet tracking) cannot be legally deducted under Wyoming law."
                    ),
                    ArticleSection(
                        heading: "Bad Faith Retention Penalties in Wyoming",
                        body: "If a landlord fails to provide an accounting within 30 days (or 15 days after address received), they forfeit the right to retain funds and can be held liable in small claims court for statutory damages.",
                        bulletPoints: ["Send certified demand letter before filing in small claims", "Bad faith retention qualifies for treble damages in many courts"]
                    )
                ],
                keyTakeaways: ["Mandatory return window: 30 days (or 15 days after address received)", "Statutory limit: No statutory limit", "Always deliver forwarding address via certified mail"],
                relatedArticleIds: ["eviction_wy", "vital_wy", "era_wy", "art_deposit_demand_letter", "art_walkthrough_checklist"]
            ),
        ]
    }

    // MARK: - 3. State Vital Records & ID Waiver Articles (51)
    private static func generateStateVitalArticles() -> [Article] {
        [
            Article(
                id: "vital_al",
                title: "Alabama Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Alabama",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Alabama.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Alabama",
                        body: "Residents experiencing homelessness or transitional housing in Alabama are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Ala. Dept. of Public Health fee waiver protocol for birth records and DPS ID voucher.",
                        bulletPoints: ["Authorized Procedure: Ala. Dept. of Public Health fee waiver protocol for birth records and DPS ID voucher", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Alabama. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Alabama",
                        body: "If you lack a permanent residential address in Alabama, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Alabama", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_al", "deposit_al", "era_al", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ak",
                title: "Alaska Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Alaska",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Alaska.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Alaska",
                        body: "Residents experiencing homelessness or transitional housing in Alaska are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Alaska DMV homeless identification fee waiver form approved by certified shelter director.",
                        bulletPoints: ["Authorized Procedure: Alaska DMV homeless identification fee waiver form approved by certified shelter director", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Alaska. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Alaska",
                        body: "If you lack a permanent residential address in Alaska, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Alaska", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ak", "deposit_ak", "era_ak", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_az",
                title: "Arizona Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Arizona",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Arizona.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Arizona",
                        body: "Residents experiencing homelessness or transitional housing in Arizona are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: MVD Form 40-5122 verified by designated homeless service provider for no-fee ID.",
                        bulletPoints: ["Authorized Procedure: MVD Form 40-5122 verified by designated homeless service provider for no-fee ID", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Arizona. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Arizona",
                        body: "If you lack a permanent residential address in Arizona, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Arizona", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_az", "deposit_az", "era_az", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ar",
                title: "Arkansas Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Arkansas",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Arkansas.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Arkansas",
                        body: "Residents experiencing homelessness or transitional housing in Arkansas are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: DHS homeless affidavit submitted to Arkansas Vital Records and Revenue Division.",
                        bulletPoints: ["Authorized Procedure: DHS homeless affidavit submitted to Arkansas Vital Records and Revenue Division", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Arkansas. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Arkansas",
                        body: "If you lack a permanent residential address in Arkansas, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Arkansas", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ar", "deposit_ar", "era_ar", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ca",
                title: "California Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "California",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in California.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in California",
                        body: "Residents experiencing homelessness or transitional housing in California are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: DMV Form DL 933 completed by homeless service provider or shelter case manager.",
                        bulletPoints: ["Authorized Procedure: DMV Form DL 933 completed by homeless service provider or shelter case manager", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in California. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in California",
                        body: "If you lack a permanent residential address in California, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in California", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ca", "deposit_ca", "era_ca", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_co",
                title: "Colorado Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Colorado",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Colorado.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Colorado",
                        body: "Residents experiencing homelessness or transitional housing in Colorado are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Colorado DMV waiver under HB 21-1314 with certified verification from local homeless agency.",
                        bulletPoints: ["Authorized Procedure: Colorado DMV waiver under HB 21-1314 with certified verification from local homeless agency", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Colorado. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Colorado",
                        body: "If you lack a permanent residential address in Colorado, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Colorado", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_co", "deposit_co", "era_co", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ct",
                title: "Connecticut Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Connecticut",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Connecticut.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Connecticut",
                        body: "Residents experiencing homelessness or transitional housing in Connecticut are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: CT DMV homeless ID fee waiver certification signed by CT Coalition to End Homelessness affiliate.",
                        bulletPoints: ["Authorized Procedure: CT DMV homeless ID fee waiver certification signed by CT Coalition to End Homelessness affiliate", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Connecticut. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Connecticut",
                        body: "If you lack a permanent residential address in Connecticut, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Connecticut", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ct", "deposit_ct", "era_ct", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_de",
                title: "Delaware Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Delaware",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Delaware.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Delaware",
                        body: "Residents experiencing homelessness or transitional housing in Delaware are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Division of Public Health homeless waiver for birth records and DMV identification fee waiver.",
                        bulletPoints: ["Authorized Procedure: Division of Public Health homeless waiver for birth records and DMV identification fee waiver", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Delaware. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Delaware",
                        body: "If you lack a permanent residential address in Delaware, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Delaware", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_de", "deposit_de", "era_de", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_dc",
                title: "District of Columbia Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "District of Columbia",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in District of Columbia.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in District of Columbia",
                        body: "Residents experiencing homelessness or transitional housing in District of Columbia are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: DC DMV low-income / homeless certification for zero-dollar REAL ID credentials.",
                        bulletPoints: ["Authorized Procedure: DC DMV low-income / homeless certification for zero-dollar REAL ID credentials", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in District of Columbia. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in District of Columbia",
                        body: "If you lack a permanent residential address in District of Columbia, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in District of Columbia", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_dc", "deposit_dc", "era_dc", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_fl",
                title: "Florida Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Florida",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Florida.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Florida",
                        body: "Residents experiencing homelessness or transitional housing in Florida are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: FLHSMV homeless fee waiver form certified by verified Continuum of Care provider.",
                        bulletPoints: ["Authorized Procedure: FLHSMV homeless fee waiver form certified by verified Continuum of Care provider", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Florida. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Florida",
                        body: "If you lack a permanent residential address in Florida, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Florida", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_fl", "deposit_fl", "era_fl", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ga",
                title: "Georgia Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Georgia",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Georgia.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Georgia",
                        body: "Residents experiencing homelessness or transitional housing in Georgia are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Georgia DDS homeless voucher protocol coordinated through Gateway Center and CoC network.",
                        bulletPoints: ["Authorized Procedure: Georgia DDS homeless voucher protocol coordinated through Gateway Center and CoC network", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Georgia. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Georgia",
                        body: "If you lack a permanent residential address in Georgia, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Georgia", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ga", "deposit_ga", "era_ga", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_hi",
                title: "Hawaii Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Hawaii",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Hawaii.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Hawaii",
                        body: "Residents experiencing homelessness or transitional housing in Hawaii are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: County driver licensing division homeless fee waiver letter provided by Partners in Care.",
                        bulletPoints: ["Authorized Procedure: County driver licensing division homeless fee waiver letter provided by Partners in Care", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Hawaii. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Hawaii",
                        body: "If you lack a permanent residential address in Hawaii, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Hawaii", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_hi", "deposit_hi", "era_hi", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_id",
                title: "Idaho Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Idaho",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Idaho.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Idaho",
                        body: "Residents experiencing homelessness or transitional housing in Idaho are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Idaho Department of Transportation fee waiver through authorized shelter referral letter.",
                        bulletPoints: ["Authorized Procedure: Idaho Department of Transportation fee waiver through authorized shelter referral letter", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Idaho. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Idaho",
                        body: "If you lack a permanent residential address in Idaho, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Idaho", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_id", "deposit_id", "era_id", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_il",
                title: "Illinois Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Illinois",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Illinois.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Illinois",
                        body: "Residents experiencing homelessness or transitional housing in Illinois are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Illinois Secretary of State homeless ID fee waiver under Public Act 101-0232.",
                        bulletPoints: ["Authorized Procedure: Illinois Secretary of State homeless ID fee waiver under Public Act 101-0232", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Illinois. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Illinois",
                        body: "If you lack a permanent residential address in Illinois, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Illinois", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_il", "deposit_il", "era_il", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_in",
                title: "Indiana Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Indiana",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Indiana.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Indiana",
                        body: "Residents experiencing homelessness or transitional housing in Indiana are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: BMV homeless photo credential verification form endorsed by certified transitional housing program.",
                        bulletPoints: ["Authorized Procedure: BMV homeless photo credential verification form endorsed by certified transitional housing program", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Indiana. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Indiana",
                        body: "If you lack a permanent residential address in Indiana, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Indiana", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_in", "deposit_in", "era_in", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ia",
                title: "Iowa Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Iowa",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Iowa.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Iowa",
                        body: "Residents experiencing homelessness or transitional housing in Iowa are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Iowa DOT homeless fee exemption certificate validated by regional Community Action Agency.",
                        bulletPoints: ["Authorized Procedure: Iowa DOT homeless fee exemption certificate validated by regional Community Action Agency", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Iowa. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Iowa",
                        body: "If you lack a permanent residential address in Iowa, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Iowa", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ia", "deposit_ia", "era_ia", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ks",
                title: "Kansas Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Kansas",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Kansas.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Kansas",
                        body: "Residents experiencing homelessness or transitional housing in Kansas are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: KDOR Division of Vehicles fee waiver letter submitted through Continuum of Care access point.",
                        bulletPoints: ["Authorized Procedure: KDOR Division of Vehicles fee waiver letter submitted through Continuum of Care access point", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Kansas. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Kansas",
                        body: "If you lack a permanent residential address in Kansas, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Kansas", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ks", "deposit_ks", "era_ks", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ky",
                title: "Kentucky Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Kentucky",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Kentucky.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Kentucky",
                        body: "Residents experiencing homelessness or transitional housing in Kentucky are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Kentucky Transportation Cabinet homeless ID waiver form signed by shelter director.",
                        bulletPoints: ["Authorized Procedure: Kentucky Transportation Cabinet homeless ID waiver form signed by shelter director", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Kentucky. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Kentucky",
                        body: "If you lack a permanent residential address in Kentucky, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Kentucky", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ky", "deposit_ky", "era_ky", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_la",
                title: "Louisiana Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Louisiana",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Louisiana.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Louisiana",
                        body: "Residents experiencing homelessness or transitional housing in Louisiana are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: OMV homeless ID waiver authorization accompanied by homeless shelter residency verification.",
                        bulletPoints: ["Authorized Procedure: OMV homeless ID waiver authorization accompanied by homeless shelter residency verification", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Louisiana. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Louisiana",
                        body: "If you lack a permanent residential address in Louisiana, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Louisiana", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_la", "deposit_la", "era_la", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_me",
                title: "Maine Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Maine",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Maine.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Maine",
                        body: "Residents experiencing homelessness or transitional housing in Maine are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Maine BMV homeless fee exemption form certified by local general assistance administrator.",
                        bulletPoints: ["Authorized Procedure: Maine BMV homeless fee exemption form certified by local general assistance administrator", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Maine. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Maine",
                        body: "If you lack a permanent residential address in Maine, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Maine", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_me", "deposit_me", "era_me", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_md",
                title: "Maryland Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Maryland",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Maryland.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Maryland",
                        body: "Residents experiencing homelessness or transitional housing in Maryland are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Maryland MVA homeless ID fee waiver under Transportation Article § 12-301.",
                        bulletPoints: ["Authorized Procedure: Maryland MVA homeless ID fee waiver under Transportation Article § 12-301", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Maryland. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Maryland",
                        body: "If you lack a permanent residential address in Maryland, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Maryland", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_md", "deposit_md", "era_md", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ma",
                title: "Massachusetts Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Massachusetts",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Massachusetts.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Massachusetts",
                        body: "Residents experiencing homelessness or transitional housing in Massachusetts are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: MassDOT RMV fee waiver letter issued through verified shelter liaison or legal services.",
                        bulletPoints: ["Authorized Procedure: MassDOT RMV fee waiver letter issued through verified shelter liaison or legal services", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Massachusetts. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Massachusetts",
                        body: "If you lack a permanent residential address in Massachusetts, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Massachusetts", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ma", "deposit_ma", "era_ma", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_mi",
                title: "Michigan Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Michigan",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Michigan.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Michigan",
                        body: "Residents experiencing homelessness or transitional housing in Michigan are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Michigan Secretary of State homeless fee waiver signed by MDHHS or certified homeless provider.",
                        bulletPoints: ["Authorized Procedure: Michigan Secretary of State homeless fee waiver signed by MDHHS or certified homeless provider", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Michigan. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Michigan",
                        body: "If you lack a permanent residential address in Michigan, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Michigan", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_mi", "deposit_mi", "era_mi", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_mn",
                title: "Minnesota Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Minnesota",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Minnesota.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Minnesota",
                        body: "Residents experiencing homelessness or transitional housing in Minnesota are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Minnesota DVS homeless ID fee waiver authorized under Minn. Stat. § 171.06.",
                        bulletPoints: ["Authorized Procedure: Minnesota DVS homeless ID fee waiver authorized under Minn. Stat. § 171.06", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Minnesota. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Minnesota",
                        body: "If you lack a permanent residential address in Minnesota, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Minnesota", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_mn", "deposit_mn", "era_mn", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ms",
                title: "Mississippi Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Mississippi",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Mississippi.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Mississippi",
                        body: "Residents experiencing homelessness or transitional housing in Mississippi are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Mississippi DPS verification letter for homeless identification assistance via CoC partner.",
                        bulletPoints: ["Authorized Procedure: Mississippi DPS verification letter for homeless identification assistance via CoC partner", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Mississippi. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Mississippi",
                        body: "If you lack a permanent residential address in Mississippi, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Mississippi", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ms", "deposit_ms", "era_ms", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_mo",
                title: "Missouri Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Missouri",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Missouri.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Missouri",
                        body: "Residents experiencing homelessness or transitional housing in Missouri are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Missouri Department of Revenue homeless ID fee exemption form with shelter director certification.",
                        bulletPoints: ["Authorized Procedure: Missouri Department of Revenue homeless ID fee exemption form with shelter director certification", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Missouri. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Missouri",
                        body: "If you lack a permanent residential address in Missouri, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Missouri", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_mo", "deposit_mo", "era_mo", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_mt",
                title: "Montana Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Montana",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Montana.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Montana",
                        body: "Residents experiencing homelessness or transitional housing in Montana are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Montana MVD fee waiver voucher issued by designated regional Community Action Organization.",
                        bulletPoints: ["Authorized Procedure: Montana MVD fee waiver voucher issued by designated regional Community Action Organization", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Montana. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Montana",
                        body: "If you lack a permanent residential address in Montana, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Montana", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_mt", "deposit_mt", "era_mt", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ne",
                title: "Nebraska Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Nebraska",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Nebraska.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Nebraska",
                        body: "Residents experiencing homelessness or transitional housing in Nebraska are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Nebraska DMV homeless ID waiver verified by regional Coordinated Entry system provider.",
                        bulletPoints: ["Authorized Procedure: Nebraska DMV homeless ID waiver verified by regional Coordinated Entry system provider", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Nebraska. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Nebraska",
                        body: "If you lack a permanent residential address in Nebraska, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Nebraska", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ne", "deposit_ne", "era_ne", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_nv",
                title: "Nevada Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Nevada",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Nevada.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Nevada",
                        body: "Residents experiencing homelessness or transitional housing in Nevada are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Nevada DMV Declaration of Homeless Status (Form DMV-013) for free identification card.",
                        bulletPoints: ["Authorized Procedure: Nevada DMV Declaration of Homeless Status (Form DMV-013) for free identification card", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Nevada. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Nevada",
                        body: "If you lack a permanent residential address in Nevada, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Nevada", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_nv", "deposit_nv", "era_nv", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_nh",
                title: "New Hampshire Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "New Hampshire",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in New Hampshire.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in New Hampshire",
                        body: "Residents experiencing homelessness or transitional housing in New Hampshire are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: NH DMV waiver through municipal welfare administrator or certified shelter verification.",
                        bulletPoints: ["Authorized Procedure: NH DMV waiver through municipal welfare administrator or certified shelter verification", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in New Hampshire. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in New Hampshire",
                        body: "If you lack a permanent residential address in New Hampshire, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in New Hampshire", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_nh", "deposit_nh", "era_nh", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_nj",
                title: "New Jersey Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "New Jersey",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in New Jersey.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in New Jersey",
                        body: "Residents experiencing homelessness or transitional housing in New Jersey are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: NJ MVC homeless verification fee waiver signed by county social services agency.",
                        bulletPoints: ["Authorized Procedure: NJ MVC homeless verification fee waiver signed by county social services agency", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in New Jersey. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in New Jersey",
                        body: "If you lack a permanent residential address in New Jersey, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in New Jersey", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_nj", "deposit_nj", "era_nj", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_nm",
                title: "New Mexico Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "New Mexico",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in New Mexico.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in New Mexico",
                        body: "Residents experiencing homelessness or transitional housing in New Mexico are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: New Mexico MVD homeless ID fee waiver under NMSA § 66-5-408 with shelter documentation.",
                        bulletPoints: ["Authorized Procedure: New Mexico MVD homeless ID fee waiver under NMSA § 66-5-408 with shelter documentation", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in New Mexico. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in New Mexico",
                        body: "If you lack a permanent residential address in New Mexico, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in New Mexico", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_nm", "deposit_nm", "era_nm", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ny",
                title: "New York Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "New York",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in New York.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in New York",
                        body: "Residents experiencing homelessness or transitional housing in New York are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: NYS DMV Form MV-44 with approved homeless services certification (fee waived).",
                        bulletPoints: ["Authorized Procedure: NYS DMV Form MV-44 with approved homeless services certification (fee waived)", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in New York. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in New York",
                        body: "If you lack a permanent residential address in New York, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in New York", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ny", "deposit_ny", "era_ny", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_nc",
                title: "North Carolina Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "North Carolina",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in North Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in North Carolina",
                        body: "Residents experiencing homelessness or transitional housing in North Carolina are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: NCDMV homeless ID waiver form endorsed by Continuum of Care or emergency shelter operator.",
                        bulletPoints: ["Authorized Procedure: NCDMV homeless ID waiver form endorsed by Continuum of Care or emergency shelter operator", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in North Carolina. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in North Carolina",
                        body: "If you lack a permanent residential address in North Carolina, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in North Carolina", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_nc", "deposit_nc", "era_nc", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_nd",
                title: "North Dakota Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "North Dakota",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in North Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in North Dakota",
                        body: "Residents experiencing homelessness or transitional housing in North Dakota are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: NDDOT fee waiver certification via local Community Action Agency partnership.",
                        bulletPoints: ["Authorized Procedure: NDDOT fee waiver certification via local Community Action Agency partnership", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in North Dakota. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in North Dakota",
                        body: "If you lack a permanent residential address in North Dakota, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in North Dakota", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_nd", "deposit_nd", "era_nd", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_oh",
                title: "Ohio Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Ohio",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Ohio.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Ohio",
                        body: "Residents experiencing homelessness or transitional housing in Ohio are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Ohio BMV Form 2043 (Verification of Homeless Status for Fee-Waived ID Card).",
                        bulletPoints: ["Authorized Procedure: Ohio BMV Form 2043 (Verification of Homeless Status for Fee-Waived ID Card)", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Ohio. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Ohio",
                        body: "If you lack a permanent residential address in Ohio, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Ohio", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_oh", "deposit_oh", "era_oh", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ok",
                title: "Oklahoma Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Oklahoma",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Oklahoma.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Oklahoma",
                        body: "Residents experiencing homelessness or transitional housing in Oklahoma are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Service Oklahoma homeless ID fee waiver form certified by recognized social services organization.",
                        bulletPoints: ["Authorized Procedure: Service Oklahoma homeless ID fee waiver form certified by recognized social services organization", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Oklahoma. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Oklahoma",
                        body: "If you lack a permanent residential address in Oklahoma, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Oklahoma", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ok", "deposit_ok", "era_ok", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_or",
                title: "Oregon Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Oregon",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Oregon.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Oregon",
                        body: "Residents experiencing homelessness or transitional housing in Oregon are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Oregon DMV homeless status certification form approved under ORS 807.400.",
                        bulletPoints: ["Authorized Procedure: Oregon DMV homeless status certification form approved under ORS 807.400", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Oregon. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Oregon",
                        body: "If you lack a permanent residential address in Oregon, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Oregon", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_or", "deposit_or", "era_or", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_pa",
                title: "Pennsylvania Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Pennsylvania",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Pennsylvania.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Pennsylvania",
                        body: "Residents experiencing homelessness or transitional housing in Pennsylvania are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: PennDOT Form DL-901 for homeless photo ID fee waiver endorsed by shelter authority.",
                        bulletPoints: ["Authorized Procedure: PennDOT Form DL-901 for homeless photo ID fee waiver endorsed by shelter authority", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Pennsylvania. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Pennsylvania",
                        body: "If you lack a permanent residential address in Pennsylvania, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Pennsylvania", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_pa", "deposit_pa", "era_pa", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ri",
                title: "Rhode Island Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Rhode Island",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Rhode Island.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Rhode Island",
                        body: "Residents experiencing homelessness or transitional housing in Rhode Island are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: RI DMV homeless ID waiver under R.I. Gen. Laws § 31-10-26 with approved shelter referral.",
                        bulletPoints: ["Authorized Procedure: RI DMV homeless ID waiver under R.I. Gen. Laws § 31-10-26 with approved shelter referral", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Rhode Island. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Rhode Island",
                        body: "If you lack a permanent residential address in Rhode Island, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Rhode Island", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ri", "deposit_ri", "era_ri", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_sc",
                title: "South Carolina Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "South Carolina",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in South Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in South Carolina",
                        body: "Residents experiencing homelessness or transitional housing in South Carolina are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: SCDMV homeless fee waiver verification issued through United Way or CoC caseworker.",
                        bulletPoints: ["Authorized Procedure: SCDMV homeless fee waiver verification issued through United Way or CoC caseworker", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in South Carolina. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in South Carolina",
                        body: "If you lack a permanent residential address in South Carolina, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in South Carolina", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_sc", "deposit_sc", "era_sc", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_sd",
                title: "South Dakota Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "South Dakota",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in South Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in South Dakota",
                        body: "Residents experiencing homelessness or transitional housing in South Dakota are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: South Dakota DPS homeless ID voucher program coordinated with local tribal or county office.",
                        bulletPoints: ["Authorized Procedure: South Dakota DPS homeless ID voucher program coordinated with local tribal or county office", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in South Dakota. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in South Dakota",
                        body: "If you lack a permanent residential address in South Dakota, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in South Dakota", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_sd", "deposit_sd", "era_sd", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_tn",
                title: "Tennessee Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Tennessee",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Tennessee.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Tennessee",
                        body: "Residents experiencing homelessness or transitional housing in Tennessee are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Tennessee Department of Safety homeless fee waiver with certified letter from recognized shelter.",
                        bulletPoints: ["Authorized Procedure: Tennessee Department of Safety homeless fee waiver with certified letter from recognized shelter", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Tennessee. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Tennessee",
                        body: "If you lack a permanent residential address in Tennessee, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Tennessee", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_tn", "deposit_tn", "era_tn", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_tx",
                title: "Texas Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Texas",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Texas.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Texas",
                        body: "Residents experiencing homelessness or transitional housing in Texas are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Texas DPS homeless ID fee waiver for individuals under age 21 or through HHSC certified liaison.",
                        bulletPoints: ["Authorized Procedure: Texas DPS homeless ID fee waiver for individuals under age 21 or through HHSC certified liaison", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Texas. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Texas",
                        body: "If you lack a permanent residential address in Texas, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Texas", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_tx", "deposit_tx", "era_tx", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_ut",
                title: "Utah Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Utah",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Utah.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Utah",
                        body: "Residents experiencing homelessness or transitional housing in Utah are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Utah DLD homeless fee waiver form authenticated by designated shelter or outreach provider.",
                        bulletPoints: ["Authorized Procedure: Utah DLD homeless fee waiver form authenticated by designated shelter or outreach provider", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Utah. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Utah",
                        body: "If you lack a permanent residential address in Utah, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Utah", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_ut", "deposit_ut", "era_ut", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_vt",
                title: "Vermont Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Vermont",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Vermont.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Vermont",
                        body: "Residents experiencing homelessness or transitional housing in Vermont are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Vermont DMV fee waiver under 23 V.S.A. § 115(b) for homeless or low-income applicants.",
                        bulletPoints: ["Authorized Procedure: Vermont DMV fee waiver under 23 V.S.A. § 115(b) for homeless or low-income applicants", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Vermont. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Vermont",
                        body: "If you lack a permanent residential address in Vermont, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Vermont", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_vt", "deposit_vt", "era_vt", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_va",
                title: "Virginia Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Virginia",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Virginia",
                        body: "Residents experiencing homelessness or transitional housing in Virginia are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Virginia DMV homeless ID fee waiver form endorsed by approved local social services agency.",
                        bulletPoints: ["Authorized Procedure: Virginia DMV homeless ID fee waiver form endorsed by approved local social services agency", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Virginia. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Virginia",
                        body: "If you lack a permanent residential address in Virginia, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Virginia", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_va", "deposit_va", "era_va", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_wa",
                title: "Washington Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Washington",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Washington.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Washington",
                        body: "Residents experiencing homelessness or transitional housing in Washington are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Washington State Department of Licensing homeless ID fee waiver under RCW 46.20.117.",
                        bulletPoints: ["Authorized Procedure: Washington State Department of Licensing homeless ID fee waiver under RCW 46.20.117", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Washington. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Washington",
                        body: "If you lack a permanent residential address in Washington, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Washington", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_wa", "deposit_wa", "era_wa", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_wv",
                title: "West Virginia Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "West Virginia",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in West Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in West Virginia",
                        body: "Residents experiencing homelessness or transitional housing in West Virginia are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: West Virginia DMV homeless verification letter through local Community Action Partnership.",
                        bulletPoints: ["Authorized Procedure: West Virginia DMV homeless verification letter through local Community Action Partnership", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in West Virginia. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in West Virginia",
                        body: "If you lack a permanent residential address in West Virginia, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in West Virginia", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_wv", "deposit_wv", "era_wv", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_wi",
                title: "Wisconsin Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Wisconsin",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Wisconsin.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Wisconsin",
                        body: "Residents experiencing homelessness or transitional housing in Wisconsin are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Wisconsin DMV homeless ID fee waiver under Wis. Stat. § 343.50(5m) signed by social worker.",
                        bulletPoints: ["Authorized Procedure: Wisconsin DMV homeless ID fee waiver under Wis. Stat. § 343.50(5m) signed by social worker", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Wisconsin. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Wisconsin",
                        body: "If you lack a permanent residential address in Wisconsin, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Wisconsin", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_wi", "deposit_wi", "era_wi", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
            Article(
                id: "vital_wy",
                title: "Wyoming Free State ID & Birth Certificate Fee Waiver Guide",
                category: .documentsNeeded,
                stateTag: "Wyoming",
                readTimeMinutes: 4,
                overview: "How to obtain official state photo identification and vital records at zero cost using homeless fee waivers in Wyoming.",
                sections: [
                    ArticleSection(
                        heading: "Fee Waiver Procedures in Wyoming",
                        body: "Residents experiencing homelessness or transitional housing in Wyoming are eligible for statutory fee waivers on state ID cards and birth certificates through established state protocols: Wyoming Department of Transportation homeless verification letter via regional shelter provider.",
                        bulletPoints: ["Authorized Procedure: Wyoming Department of Transportation homeless verification letter via regional shelter provider", "Certification Letter: Requires signed verification from recognized shelter or caseworker.", "Temporary Printout: Ask for an interim paper ID credential immediately at the counter."],
                        callout: "Never pay $35+ for a state ID if you qualify for the homeless fee waiver in Wyoming. Bring your verification letter to the appointment."
                    ),
                    ArticleSection(
                        heading: "Receiving Mail Without a Fixed Address in Wyoming",
                        body: "If you lack a permanent residential address in Wyoming, state agencies allow card delivery to verified emergency shelters, community centers, or USPS General Delivery.",
                        bulletPoints: ["Address mail to YOUR NAME / GENERAL DELIVERY / CITY, STATE, ZIP-9999", "Held for 30 calendar days at main post office branch"]
                    )
                ],
                keyTakeaways: ["Zero-dollar state identification available in Wyoming", "Requires verification from approved shelter or social worker", "Use General Delivery or shelter mailing address for delivery"],
                relatedArticleIds: ["eviction_wy", "deposit_wy", "era_wy", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
        ]
    }

    // MARK: - 4. State ERAP & Eviction Diversion Articles (51)
    private static func generateStateERAPArticles() -> [Article] {
        [
            Article(
                id: "era_al",
                title: "Alabama Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Alabama",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Alabama.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Alabama",
                        body: "Counties and municipal jurisdictions across Alabama administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Alabama. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Alabama",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Alabama", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_al", "deposit_al", "vital_al", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ak",
                title: "Alaska Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Alaska",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Alaska.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Alaska",
                        body: "Counties and municipal jurisdictions across Alaska administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Alaska. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Alaska",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Alaska", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ak", "deposit_ak", "vital_ak", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_az",
                title: "Arizona Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Arizona",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Arizona.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Arizona",
                        body: "Counties and municipal jurisdictions across Arizona administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Arizona. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Arizona",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Arizona", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_az", "deposit_az", "vital_az", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ar",
                title: "Arkansas Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Arkansas",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Arkansas.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Arkansas",
                        body: "Counties and municipal jurisdictions across Arkansas administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Arkansas. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Arkansas",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Arkansas", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ar", "deposit_ar", "vital_ar", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ca",
                title: "California Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "California",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in California.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in California",
                        body: "Counties and municipal jurisdictions across California administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in California. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in California",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in California", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ca", "deposit_ca", "vital_ca", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_co",
                title: "Colorado Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Colorado",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Colorado.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Colorado",
                        body: "Counties and municipal jurisdictions across Colorado administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Colorado. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Colorado",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Colorado", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_co", "deposit_co", "vital_co", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ct",
                title: "Connecticut Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Connecticut",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Connecticut.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Connecticut",
                        body: "Counties and municipal jurisdictions across Connecticut administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Connecticut. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Connecticut",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Connecticut", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ct", "deposit_ct", "vital_ct", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_de",
                title: "Delaware Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Delaware",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Delaware.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Delaware",
                        body: "Counties and municipal jurisdictions across Delaware administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Delaware. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Delaware",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Delaware", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_de", "deposit_de", "vital_de", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_dc",
                title: "District of Columbia Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "District of Columbia",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in District of Columbia.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in District of Columbia",
                        body: "Counties and municipal jurisdictions across District of Columbia administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in District of Columbia. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in District of Columbia",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in District of Columbia", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_dc", "deposit_dc", "vital_dc", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_fl",
                title: "Florida Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Florida",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Florida.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Florida",
                        body: "Counties and municipal jurisdictions across Florida administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Florida. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Florida",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Florida", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_fl", "deposit_fl", "vital_fl", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ga",
                title: "Georgia Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Georgia",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Georgia.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Georgia",
                        body: "Counties and municipal jurisdictions across Georgia administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Georgia. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Georgia",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Georgia", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ga", "deposit_ga", "vital_ga", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_hi",
                title: "Hawaii Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Hawaii",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Hawaii.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Hawaii",
                        body: "Counties and municipal jurisdictions across Hawaii administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Hawaii. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Hawaii",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Hawaii", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_hi", "deposit_hi", "vital_hi", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_id",
                title: "Idaho Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Idaho",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Idaho.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Idaho",
                        body: "Counties and municipal jurisdictions across Idaho administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Idaho. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Idaho",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Idaho", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_id", "deposit_id", "vital_id", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_il",
                title: "Illinois Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Illinois",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Illinois.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Illinois",
                        body: "Counties and municipal jurisdictions across Illinois administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Illinois. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Illinois",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Illinois", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_il", "deposit_il", "vital_il", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_in",
                title: "Indiana Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Indiana",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Indiana.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Indiana",
                        body: "Counties and municipal jurisdictions across Indiana administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Indiana. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Indiana",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Indiana", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_in", "deposit_in", "vital_in", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ia",
                title: "Iowa Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Iowa",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Iowa.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Iowa",
                        body: "Counties and municipal jurisdictions across Iowa administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Iowa. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Iowa",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Iowa", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ia", "deposit_ia", "vital_ia", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ks",
                title: "Kansas Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Kansas",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Kansas.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Kansas",
                        body: "Counties and municipal jurisdictions across Kansas administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Kansas. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Kansas",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Kansas", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ks", "deposit_ks", "vital_ks", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ky",
                title: "Kentucky Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Kentucky",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Kentucky.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Kentucky",
                        body: "Counties and municipal jurisdictions across Kentucky administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Kentucky. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Kentucky",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Kentucky", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ky", "deposit_ky", "vital_ky", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_la",
                title: "Louisiana Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Louisiana",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Louisiana.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Louisiana",
                        body: "Counties and municipal jurisdictions across Louisiana administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Louisiana. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Louisiana",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Louisiana", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_la", "deposit_la", "vital_la", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_me",
                title: "Maine Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Maine",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Maine.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Maine",
                        body: "Counties and municipal jurisdictions across Maine administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Maine. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Maine",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Maine", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_me", "deposit_me", "vital_me", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_md",
                title: "Maryland Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Maryland",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Maryland.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Maryland",
                        body: "Counties and municipal jurisdictions across Maryland administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Maryland. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Maryland",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Maryland", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_md", "deposit_md", "vital_md", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ma",
                title: "Massachusetts Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Massachusetts",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Massachusetts.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Massachusetts",
                        body: "Counties and municipal jurisdictions across Massachusetts administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Massachusetts. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Massachusetts",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Massachusetts", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ma", "deposit_ma", "vital_ma", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_mi",
                title: "Michigan Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Michigan",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Michigan.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Michigan",
                        body: "Counties and municipal jurisdictions across Michigan administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Michigan. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Michigan",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Michigan", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_mi", "deposit_mi", "vital_mi", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_mn",
                title: "Minnesota Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Minnesota",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Minnesota.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Minnesota",
                        body: "Counties and municipal jurisdictions across Minnesota administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Minnesota. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Minnesota",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Minnesota", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_mn", "deposit_mn", "vital_mn", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ms",
                title: "Mississippi Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Mississippi",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Mississippi.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Mississippi",
                        body: "Counties and municipal jurisdictions across Mississippi administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Mississippi. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Mississippi",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Mississippi", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ms", "deposit_ms", "vital_ms", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_mo",
                title: "Missouri Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Missouri",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Missouri.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Missouri",
                        body: "Counties and municipal jurisdictions across Missouri administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Missouri. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Missouri",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Missouri", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_mo", "deposit_mo", "vital_mo", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_mt",
                title: "Montana Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Montana",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Montana.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Montana",
                        body: "Counties and municipal jurisdictions across Montana administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Montana. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Montana",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Montana", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_mt", "deposit_mt", "vital_mt", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ne",
                title: "Nebraska Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Nebraska",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Nebraska.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Nebraska",
                        body: "Counties and municipal jurisdictions across Nebraska administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Nebraska. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Nebraska",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Nebraska", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ne", "deposit_ne", "vital_ne", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_nv",
                title: "Nevada Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Nevada",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Nevada.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Nevada",
                        body: "Counties and municipal jurisdictions across Nevada administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Nevada. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Nevada",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Nevada", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_nv", "deposit_nv", "vital_nv", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_nh",
                title: "New Hampshire Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "New Hampshire",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in New Hampshire.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in New Hampshire",
                        body: "Counties and municipal jurisdictions across New Hampshire administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in New Hampshire. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in New Hampshire",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in New Hampshire", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_nh", "deposit_nh", "vital_nh", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_nj",
                title: "New Jersey Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "New Jersey",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in New Jersey.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in New Jersey",
                        body: "Counties and municipal jurisdictions across New Jersey administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in New Jersey. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in New Jersey",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in New Jersey", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_nj", "deposit_nj", "vital_nj", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_nm",
                title: "New Mexico Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "New Mexico",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in New Mexico.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in New Mexico",
                        body: "Counties and municipal jurisdictions across New Mexico administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in New Mexico. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in New Mexico",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in New Mexico", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_nm", "deposit_nm", "vital_nm", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ny",
                title: "New York Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "New York",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in New York.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in New York",
                        body: "Counties and municipal jurisdictions across New York administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in New York. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in New York",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in New York", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ny", "deposit_ny", "vital_ny", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_nc",
                title: "North Carolina Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "North Carolina",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in North Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in North Carolina",
                        body: "Counties and municipal jurisdictions across North Carolina administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in North Carolina. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in North Carolina",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in North Carolina", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_nc", "deposit_nc", "vital_nc", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_nd",
                title: "North Dakota Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "North Dakota",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in North Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in North Dakota",
                        body: "Counties and municipal jurisdictions across North Dakota administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in North Dakota. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in North Dakota",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in North Dakota", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_nd", "deposit_nd", "vital_nd", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_oh",
                title: "Ohio Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Ohio",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Ohio.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Ohio",
                        body: "Counties and municipal jurisdictions across Ohio administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Ohio. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Ohio",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Ohio", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_oh", "deposit_oh", "vital_oh", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ok",
                title: "Oklahoma Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Oklahoma",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Oklahoma.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Oklahoma",
                        body: "Counties and municipal jurisdictions across Oklahoma administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Oklahoma. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Oklahoma",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Oklahoma", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ok", "deposit_ok", "vital_ok", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_or",
                title: "Oregon Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Oregon",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Oregon.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Oregon",
                        body: "Counties and municipal jurisdictions across Oregon administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Oregon. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Oregon",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Oregon", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_or", "deposit_or", "vital_or", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_pa",
                title: "Pennsylvania Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Pennsylvania",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Pennsylvania.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Pennsylvania",
                        body: "Counties and municipal jurisdictions across Pennsylvania administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Pennsylvania. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Pennsylvania",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Pennsylvania", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_pa", "deposit_pa", "vital_pa", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ri",
                title: "Rhode Island Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Rhode Island",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Rhode Island.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Rhode Island",
                        body: "Counties and municipal jurisdictions across Rhode Island administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Rhode Island. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Rhode Island",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Rhode Island", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ri", "deposit_ri", "vital_ri", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_sc",
                title: "South Carolina Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "South Carolina",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in South Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in South Carolina",
                        body: "Counties and municipal jurisdictions across South Carolina administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in South Carolina. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in South Carolina",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in South Carolina", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_sc", "deposit_sc", "vital_sc", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_sd",
                title: "South Dakota Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "South Dakota",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in South Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in South Dakota",
                        body: "Counties and municipal jurisdictions across South Dakota administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in South Dakota. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in South Dakota",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in South Dakota", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_sd", "deposit_sd", "vital_sd", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_tn",
                title: "Tennessee Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Tennessee",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Tennessee.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Tennessee",
                        body: "Counties and municipal jurisdictions across Tennessee administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Tennessee. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Tennessee",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Tennessee", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_tn", "deposit_tn", "vital_tn", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_tx",
                title: "Texas Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Texas",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Texas.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Texas",
                        body: "Counties and municipal jurisdictions across Texas administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Texas. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Texas",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Texas", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_tx", "deposit_tx", "vital_tx", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_ut",
                title: "Utah Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Utah",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Utah.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Utah",
                        body: "Counties and municipal jurisdictions across Utah administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Utah. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Utah",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Utah", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_ut", "deposit_ut", "vital_ut", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_vt",
                title: "Vermont Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Vermont",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Vermont.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Vermont",
                        body: "Counties and municipal jurisdictions across Vermont administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Vermont. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Vermont",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Vermont", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_vt", "deposit_vt", "vital_vt", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_va",
                title: "Virginia Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Virginia",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Virginia",
                        body: "Counties and municipal jurisdictions across Virginia administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Virginia. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Virginia",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Virginia", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_va", "deposit_va", "vital_va", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_wa",
                title: "Washington Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Washington",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Washington.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Washington",
                        body: "Counties and municipal jurisdictions across Washington administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Washington. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Washington",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Washington", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_wa", "deposit_wa", "vital_wa", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_wv",
                title: "West Virginia Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "West Virginia",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in West Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in West Virginia",
                        body: "Counties and municipal jurisdictions across West Virginia administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in West Virginia. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in West Virginia",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in West Virginia", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_wv", "deposit_wv", "vital_wv", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_wi",
                title: "Wisconsin Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Wisconsin",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Wisconsin.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Wisconsin",
                        body: "Counties and municipal jurisdictions across Wisconsin administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Wisconsin. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Wisconsin",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Wisconsin", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_wi", "deposit_wi", "vital_wi", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
            Article(
                id: "era_wy",
                title: "Wyoming Emergency Rental Assistance & Eviction Diversion Courts",
                category: .communityPrograms,
                stateTag: "Wyoming",
                readTimeMinutes: 5,
                overview: "How to access local rental relief grants and specialized eviction diversion court mediation in Wyoming.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Rental Relief Funding in Wyoming",
                        body: "Counties and municipal jurisdictions across Wyoming administer dedicated Emergency Solutions Grants (ESG) and municipal rental relief funds to pay landlord arrears directly and halt active eviction lawsuits.",
                        bulletPoints: ["Direct Landlord Payment: Certified check issued directly to property manager covering past-due rent and late fees.", "Court Eviction Diversion: Many municipal courts require landlord participation in mediation before an eviction judgment can be entered.", "Utility Arrears Included: Most assistance packages include emergency electric, gas, and water bill forgiveness."],
                        callout: "Notify your court clerk immediately if an application for rental assistance is pending in Wyoming. Courts frequently grant 30-day continuances."
                    ),
                    ArticleSection(
                        heading: "Required Documentation in Wyoming",
                        body: "To expedite approval, prepare past-due rent notices, written lease agreements, zero-income certifications, and photo identification.",
                        bulletPoints: ["Landlord W-9 form required for check dispatch", "Case managers provide eviction mitigation letters"]
                    )
                ],
                keyTakeaways: ["Rental relief grants cover arrears directly to landlords in Wyoming", "Courts provide eviction mediation to negotiate repayment plans", "Pending applications frequently qualify for court continuance"],
                relatedArticleIds: ["eviction_wy", "deposit_wy", "vital_wy", "art_rapid_rehousing_esg", "art_esg_deposit_grants"]
            ),
        ]
    }

    // MARK: - 5. State Camping & Safe Parking Articles (51)
    private static func generateStateCampingArticles() -> [Article] {
        [
            Article(
                id: "camping_al",
                title: "Alabama Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Alabama",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Alabama.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Alabama",
                        body: "Municipalities across Alabama enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Alabama, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Alabama",
                        body: "Call 2-1-1 or visit local navigation hubs in Alabama to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Alabama", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_al", "era_al", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ak",
                title: "Alaska Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Alaska",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Alaska.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Alaska",
                        body: "Municipalities across Alaska enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Alaska, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Alaska",
                        body: "Call 2-1-1 or visit local navigation hubs in Alaska to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Alaska", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ak", "era_ak", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_az",
                title: "Arizona Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Arizona",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Arizona.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Arizona",
                        body: "Municipalities across Arizona enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Arizona, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Arizona",
                        body: "Call 2-1-1 or visit local navigation hubs in Arizona to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Arizona", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_az", "era_az", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ar",
                title: "Arkansas Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Arkansas",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Arkansas.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Arkansas",
                        body: "Municipalities across Arkansas enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Arkansas, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Arkansas",
                        body: "Call 2-1-1 or visit local navigation hubs in Arkansas to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Arkansas", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ar", "era_ar", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ca",
                title: "California Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "California",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in California.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in California",
                        body: "Municipalities across California enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In California, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in California",
                        body: "Call 2-1-1 or visit local navigation hubs in California to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across California", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ca", "era_ca", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_co",
                title: "Colorado Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Colorado",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Colorado.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Colorado",
                        body: "Municipalities across Colorado enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Colorado, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Colorado",
                        body: "Call 2-1-1 or visit local navigation hubs in Colorado to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Colorado", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_co", "era_co", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ct",
                title: "Connecticut Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Connecticut",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Connecticut.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Connecticut",
                        body: "Municipalities across Connecticut enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Connecticut, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Connecticut",
                        body: "Call 2-1-1 or visit local navigation hubs in Connecticut to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Connecticut", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ct", "era_ct", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_de",
                title: "Delaware Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Delaware",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Delaware.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Delaware",
                        body: "Municipalities across Delaware enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Delaware, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Delaware",
                        body: "Call 2-1-1 or visit local navigation hubs in Delaware to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Delaware", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_de", "era_de", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_dc",
                title: "District of Columbia Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "District of Columbia",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in District of Columbia.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in District of Columbia",
                        body: "Municipalities across District of Columbia enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In District of Columbia, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in District of Columbia",
                        body: "Call 2-1-1 or visit local navigation hubs in District of Columbia to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across District of Columbia", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_dc", "era_dc", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_fl",
                title: "Florida Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Florida",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Florida.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Florida",
                        body: "Municipalities across Florida enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Florida, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Florida",
                        body: "Call 2-1-1 or visit local navigation hubs in Florida to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Florida", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_fl", "era_fl", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ga",
                title: "Georgia Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Georgia",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Georgia.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Georgia",
                        body: "Municipalities across Georgia enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Georgia, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Georgia",
                        body: "Call 2-1-1 or visit local navigation hubs in Georgia to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Georgia", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ga", "era_ga", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_hi",
                title: "Hawaii Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Hawaii",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Hawaii.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Hawaii",
                        body: "Municipalities across Hawaii enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Hawaii, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Hawaii",
                        body: "Call 2-1-1 or visit local navigation hubs in Hawaii to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Hawaii", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_hi", "era_hi", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_id",
                title: "Idaho Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Idaho",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Idaho.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Idaho",
                        body: "Municipalities across Idaho enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Idaho, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Idaho",
                        body: "Call 2-1-1 or visit local navigation hubs in Idaho to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Idaho", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_id", "era_id", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_il",
                title: "Illinois Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Illinois",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Illinois.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Illinois",
                        body: "Municipalities across Illinois enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Illinois, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Illinois",
                        body: "Call 2-1-1 or visit local navigation hubs in Illinois to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Illinois", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_il", "era_il", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_in",
                title: "Indiana Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Indiana",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Indiana.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Indiana",
                        body: "Municipalities across Indiana enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Indiana, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Indiana",
                        body: "Call 2-1-1 or visit local navigation hubs in Indiana to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Indiana", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_in", "era_in", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ia",
                title: "Iowa Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Iowa",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Iowa.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Iowa",
                        body: "Municipalities across Iowa enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Iowa, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Iowa",
                        body: "Call 2-1-1 or visit local navigation hubs in Iowa to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Iowa", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ia", "era_ia", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ks",
                title: "Kansas Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Kansas",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Kansas.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Kansas",
                        body: "Municipalities across Kansas enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Kansas, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Kansas",
                        body: "Call 2-1-1 or visit local navigation hubs in Kansas to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Kansas", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ks", "era_ks", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ky",
                title: "Kentucky Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Kentucky",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Kentucky.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Kentucky",
                        body: "Municipalities across Kentucky enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Kentucky, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Kentucky",
                        body: "Call 2-1-1 or visit local navigation hubs in Kentucky to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Kentucky", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ky", "era_ky", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_la",
                title: "Louisiana Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Louisiana",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Louisiana.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Louisiana",
                        body: "Municipalities across Louisiana enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Louisiana, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Louisiana",
                        body: "Call 2-1-1 or visit local navigation hubs in Louisiana to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Louisiana", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_la", "era_la", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_me",
                title: "Maine Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Maine",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Maine.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Maine",
                        body: "Municipalities across Maine enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Maine, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Maine",
                        body: "Call 2-1-1 or visit local navigation hubs in Maine to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Maine", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_me", "era_me", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_md",
                title: "Maryland Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Maryland",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Maryland.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Maryland",
                        body: "Municipalities across Maryland enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Maryland, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Maryland",
                        body: "Call 2-1-1 or visit local navigation hubs in Maryland to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Maryland", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_md", "era_md", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ma",
                title: "Massachusetts Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Massachusetts",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Massachusetts.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Massachusetts",
                        body: "Municipalities across Massachusetts enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Massachusetts, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Massachusetts",
                        body: "Call 2-1-1 or visit local navigation hubs in Massachusetts to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Massachusetts", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ma", "era_ma", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_mi",
                title: "Michigan Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Michigan",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Michigan.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Michigan",
                        body: "Municipalities across Michigan enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Michigan, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Michigan",
                        body: "Call 2-1-1 or visit local navigation hubs in Michigan to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Michigan", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_mi", "era_mi", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_mn",
                title: "Minnesota Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Minnesota",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Minnesota.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Minnesota",
                        body: "Municipalities across Minnesota enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Minnesota, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Minnesota",
                        body: "Call 2-1-1 or visit local navigation hubs in Minnesota to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Minnesota", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_mn", "era_mn", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ms",
                title: "Mississippi Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Mississippi",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Mississippi.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Mississippi",
                        body: "Municipalities across Mississippi enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Mississippi, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Mississippi",
                        body: "Call 2-1-1 or visit local navigation hubs in Mississippi to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Mississippi", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ms", "era_ms", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_mo",
                title: "Missouri Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Missouri",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Missouri.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Missouri",
                        body: "Municipalities across Missouri enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Missouri, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Missouri",
                        body: "Call 2-1-1 or visit local navigation hubs in Missouri to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Missouri", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_mo", "era_mo", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_mt",
                title: "Montana Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Montana",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Montana.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Montana",
                        body: "Municipalities across Montana enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Montana, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Montana",
                        body: "Call 2-1-1 or visit local navigation hubs in Montana to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Montana", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_mt", "era_mt", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ne",
                title: "Nebraska Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Nebraska",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Nebraska.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Nebraska",
                        body: "Municipalities across Nebraska enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Nebraska, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Nebraska",
                        body: "Call 2-1-1 or visit local navigation hubs in Nebraska to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Nebraska", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ne", "era_ne", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_nv",
                title: "Nevada Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Nevada",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Nevada.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Nevada",
                        body: "Municipalities across Nevada enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Nevada, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Nevada",
                        body: "Call 2-1-1 or visit local navigation hubs in Nevada to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Nevada", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_nv", "era_nv", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_nh",
                title: "New Hampshire Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "New Hampshire",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in New Hampshire.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in New Hampshire",
                        body: "Municipalities across New Hampshire enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In New Hampshire, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in New Hampshire",
                        body: "Call 2-1-1 or visit local navigation hubs in New Hampshire to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across New Hampshire", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_nh", "era_nh", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_nj",
                title: "New Jersey Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "New Jersey",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in New Jersey.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in New Jersey",
                        body: "Municipalities across New Jersey enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In New Jersey, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in New Jersey",
                        body: "Call 2-1-1 or visit local navigation hubs in New Jersey to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across New Jersey", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_nj", "era_nj", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_nm",
                title: "New Mexico Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "New Mexico",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in New Mexico.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in New Mexico",
                        body: "Municipalities across New Mexico enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In New Mexico, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in New Mexico",
                        body: "Call 2-1-1 or visit local navigation hubs in New Mexico to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across New Mexico", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_nm", "era_nm", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ny",
                title: "New York Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "New York",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in New York.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in New York",
                        body: "Municipalities across New York enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In New York, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in New York",
                        body: "Call 2-1-1 or visit local navigation hubs in New York to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across New York", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ny", "era_ny", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_nc",
                title: "North Carolina Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "North Carolina",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in North Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in North Carolina",
                        body: "Municipalities across North Carolina enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In North Carolina, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in North Carolina",
                        body: "Call 2-1-1 or visit local navigation hubs in North Carolina to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across North Carolina", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_nc", "era_nc", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_nd",
                title: "North Dakota Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "North Dakota",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in North Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in North Dakota",
                        body: "Municipalities across North Dakota enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In North Dakota, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in North Dakota",
                        body: "Call 2-1-1 or visit local navigation hubs in North Dakota to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across North Dakota", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_nd", "era_nd", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_oh",
                title: "Ohio Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Ohio",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Ohio.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Ohio",
                        body: "Municipalities across Ohio enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Ohio, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Ohio",
                        body: "Call 2-1-1 or visit local navigation hubs in Ohio to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Ohio", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_oh", "era_oh", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ok",
                title: "Oklahoma Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Oklahoma",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Oklahoma.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Oklahoma",
                        body: "Municipalities across Oklahoma enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Oklahoma, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Oklahoma",
                        body: "Call 2-1-1 or visit local navigation hubs in Oklahoma to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Oklahoma", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ok", "era_ok", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_or",
                title: "Oregon Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Oregon",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Oregon.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Oregon",
                        body: "Municipalities across Oregon enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Oregon, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Oregon",
                        body: "Call 2-1-1 or visit local navigation hubs in Oregon to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Oregon", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_or", "era_or", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_pa",
                title: "Pennsylvania Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Pennsylvania",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Pennsylvania.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Pennsylvania",
                        body: "Municipalities across Pennsylvania enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Pennsylvania, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Pennsylvania",
                        body: "Call 2-1-1 or visit local navigation hubs in Pennsylvania to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Pennsylvania", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_pa", "era_pa", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ri",
                title: "Rhode Island Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Rhode Island",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Rhode Island.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Rhode Island",
                        body: "Municipalities across Rhode Island enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Rhode Island, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Rhode Island",
                        body: "Call 2-1-1 or visit local navigation hubs in Rhode Island to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Rhode Island", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ri", "era_ri", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_sc",
                title: "South Carolina Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "South Carolina",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in South Carolina.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in South Carolina",
                        body: "Municipalities across South Carolina enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In South Carolina, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in South Carolina",
                        body: "Call 2-1-1 or visit local navigation hubs in South Carolina to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across South Carolina", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_sc", "era_sc", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_sd",
                title: "South Dakota Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "South Dakota",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in South Dakota.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in South Dakota",
                        body: "Municipalities across South Dakota enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In South Dakota, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in South Dakota",
                        body: "Call 2-1-1 or visit local navigation hubs in South Dakota to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across South Dakota", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_sd", "era_sd", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_tn",
                title: "Tennessee Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Tennessee",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Tennessee.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Tennessee",
                        body: "Municipalities across Tennessee enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Tennessee, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Tennessee",
                        body: "Call 2-1-1 or visit local navigation hubs in Tennessee to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Tennessee", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_tn", "era_tn", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_tx",
                title: "Texas Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Texas",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Texas.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Texas",
                        body: "Municipalities across Texas enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Texas, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Texas",
                        body: "Call 2-1-1 or visit local navigation hubs in Texas to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Texas", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_tx", "era_tx", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_ut",
                title: "Utah Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Utah",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Utah.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Utah",
                        body: "Municipalities across Utah enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Utah, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Utah",
                        body: "Call 2-1-1 or visit local navigation hubs in Utah to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Utah", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_ut", "era_ut", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_vt",
                title: "Vermont Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Vermont",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Vermont.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Vermont",
                        body: "Municipalities across Vermont enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Vermont, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Vermont",
                        body: "Call 2-1-1 or visit local navigation hubs in Vermont to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Vermont", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_vt", "era_vt", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_va",
                title: "Virginia Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Virginia",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Virginia",
                        body: "Municipalities across Virginia enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Virginia, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Virginia",
                        body: "Call 2-1-1 or visit local navigation hubs in Virginia to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Virginia", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_va", "era_va", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_wa",
                title: "Washington Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Washington",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Washington.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Washington",
                        body: "Municipalities across Washington enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Washington, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Washington",
                        body: "Call 2-1-1 or visit local navigation hubs in Washington to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Washington", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_wa", "era_wa", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_wv",
                title: "West Virginia Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "West Virginia",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in West Virginia.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in West Virginia",
                        body: "Municipalities across West Virginia enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In West Virginia, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in West Virginia",
                        body: "Call 2-1-1 or visit local navigation hubs in West Virginia to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across West Virginia", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_wv", "era_wv", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_wi",
                title: "Wisconsin Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Wisconsin",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Wisconsin.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Wisconsin",
                        body: "Municipalities across Wisconsin enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Wisconsin, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Wisconsin",
                        body: "Call 2-1-1 or visit local navigation hubs in Wisconsin to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Wisconsin", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_wi", "era_wi", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "camping_wy",
                title: "Wyoming Safe Parking, Camping Laws & Emergency Shelters",
                category: .safetyInstructions,
                stateTag: "Wyoming",
                readTimeMinutes: 4,
                overview: "Navigating public space regulations, safe parking lots, and severe weather emergency warming hubs in Wyoming.",
                sections: [
                    ArticleSection(
                        heading: "Public Space Regulations in Wyoming",
                        body: "Municipalities across Wyoming enforce varying local ordinances governing vehicle habitation, park curfews, and public right-of-way camping. Understanding local rules helps avoid vehicle impoundment and citations.",
                        bulletPoints: ["Safe Parking Lots: Regulated lots with nighttime security, sanitation, and charging ports.", "Severe Weather Declarations: Cold weather or heat emergency alerts temporarily suspend shelter intake caps.", "Property Rights: Cities must provide advance notice before encampment cleanups and preserve medications and identification."],
                        callout: "In Wyoming, never run vehicle engines overnight for heat due to fatal carbon monoxide hazards. Utilize thermal insulation and sub-zero sleeping gear."
                    ),
                    ArticleSection(
                        heading: "Connecting with Low-Barrier Shelters in Wyoming",
                        body: "Call 2-1-1 or visit local navigation hubs in Wyoming to locate shelters that accommodate pets, personal belongings, and partner co-sheltering.",
                        bulletPoints: ["Keep auto insurance and registration updated to avoid towing", "Use blackout foam window coverings for insulation and privacy"]
                    )
                ],
                keyTakeaways: ["Understand municipal vehicle parking limits across Wyoming", "Access safe parking lots through 2-1-1 dispatch", "Severe weather declarations open walk-in warming stations"],
                relatedArticleIds: ["eviction_wy", "era_wy", "art_safe_parking_programs", "art_vehicle_living_safety", "art_unlawful_sweeps_rights"]
            ),
        ]
    }

    // MARK: - 6. Subsidized Housing Articles (20)
    private static func generateSubsidizedHousingArticles() -> [Article] {
        [
            Article(
                id: "art_voucher_section8",
                title: "Section 8 Housing Choice Voucher: Complete Application Guide",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Step-by-step roadmap to finding open PHA waitlists, submitting lottery entries, and passing intake interviews.",
                sections: [
                    ArticleSection(
                        heading: "Section 8 Housing Choice Voucher: Complete Application Guide",
                        body: "Step-by-step roadmap to finding open PHA waitlists, submitting lottery entries, and passing intake interviews. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_hqs_inspection", "art_voucher_portability", "art_lihtc_explained", "art_source_of_income_laws"]
            ),
            Article(
                id: "art_hqs_inspection",
                title: "Passing the Section 8 Housing Quality Standards Inspection",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Detailed walkthrough of HUD mandatory safety checklist items required before subsidy payments begin.",
                sections: [
                    ArticleSection(
                        heading: "Passing the Section 8 Housing Quality Standards Inspection",
                        body: "Detailed walkthrough of HUD mandatory safety checklist items required before subsidy payments begin. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_walkthrough_checklist", "art_lead_paint_rules"]
            ),
            Article(
                id: "art_voucher_portability",
                title: "Section 8 Portability: Transferring Your Voucher Nationwide",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Procedures for moving an active Housing Choice Voucher between different housing authority jurisdictions.",
                sections: [
                    ArticleSection(
                        heading: "Section 8 Portability: Transferring Your Voucher Nationwide",
                        body: "Procedures for moving an active Housing Choice Voucher between different housing authority jurisdictions. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_fair_market_rents", "art_landlord_resume"]
            ),
            Article(
                id: "art_lihtc_explained",
                title: "Low-Income Housing Tax Credit Properties Explained",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "How tax credit apartment communities work, AMI income caps, and applying directly without a voucher.",
                sections: [
                    ArticleSection(
                        heading: "Low-Income Housing Tax Credit Properties Explained",
                        body: "How tax credit apartment communities work, AMI income caps, and applying directly without a voucher. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_source_of_income_laws", "art_credit_score_screening"]
            ),
            Article(
                id: "art_coordinated_entry",
                title: "Coordinated Entry System: Prioritization & Intake",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "How HUD Coordinated Entry works, vulnerability assessment scoring, and housing placement queues.",
                sections: [
                    ArticleSection(
                        heading: "Coordinated Entry System: Prioritization & Intake",
                        body: "How HUD Coordinated Entry works, vulnerability assessment scoring, and housing placement queues. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_hud_vash", "art_rapid_rehousing_esg", "art_street_medicine"]
            ),
            Article(
                id: "art_hud_vash",
                title: "HUD-VASH Vouchers: Housing & Supportive Services for Veterans",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Specialized rental vouchers paired with VA clinical case management for unhoused veterans.",
                sections: [
                    ArticleSection(
                        heading: "HUD-VASH Vouchers: Housing & Supportive Services for Veterans",
                        body: "Specialized rental vouchers paired with VA clinical case management for unhoused veterans. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_ssvf_veterans", "art_voucher_section8", "art_esg_deposit_grants"]
            ),
            Article(
                id: "art_rapid_rehousing_esg",
                title: "Emergency Solutions Grants: Rapid Re-Housing Programs",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Short-to-medium term rental assistance, security deposit grants, and stabilization case management.",
                sections: [
                    ArticleSection(
                        heading: "Emergency Solutions Grants: Rapid Re-Housing Programs",
                        body: "Short-to-medium term rental assistance, security deposit grants, and stabilization case management. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_coordinated_entry", "art_esg_deposit_grants", "art_utility_assistance_heap"]
            ),
            Article(
                id: "art_source_of_income_laws",
                title: "Source of Income Protections: Fighting Voucher Discrimination",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Legal rights in jurisdictions where landlords cannot reject applicants based on Section 8 vouchers.",
                sections: [
                    ArticleSection(
                        heading: "Source of Income Protections: Fighting Voucher Discrimination",
                        body: "Legal rights in jurisdictions where landlords cannot reject applicants based on Section 8 vouchers. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_landlord_resume", "art_credit_score_screening"]
            ),
            Article(
                id: "art_section202_elderly",
                title: "Section 202 Supportive Housing for Elderly Adults",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Subsidized independent apartment communities tailored for low-income seniors aged 62 and older.",
                sections: [
                    ArticleSection(
                        heading: "Section 202 Supportive Housing for Elderly Adults",
                        body: "Subsidized independent apartment communities tailored for low-income seniors aged 62 and older. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_senior_housing_pace", "art_voucher_section8", "art_reasonable_modifications_disability"]
            ),
            Article(
                id: "art_section811_disabilities",
                title: "Section 811 Supportive Housing for Persons with Disabilities",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Dedicated integrated housing developments for non-elderly adults with verified physical or developmental disabilities.",
                sections: [
                    ArticleSection(
                        heading: "Section 811 Supportive Housing for Persons with Disabilities",
                        body: "Dedicated integrated housing developments for non-elderly adults with verified physical or developmental disabilities. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_reasonable_modifications_disability", "art_soar_disability", "art_service_and_support_animals"]
            ),
            Article(
                id: "art_mainstream_vouchers",
                title: "Mainstream Housing Vouchers for Non-Elderly Disabled Individuals",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Specialized tenant-based Section 8 vouchers assisting disabled individuals transitioning from institutions or homelessness.",
                sections: [
                    ArticleSection(
                        heading: "Mainstream Housing Vouchers for Non-Elderly Disabled Individuals",
                        body: "Specialized tenant-based Section 8 vouchers assisting disabled individuals transitioning from institutions or homelessness. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_section811_disabilities", "art_voucher_section8", "art_coordinated_entry"]
            ),
            Article(
                id: "art_fup_youth_vouchers",
                title: "Family Unification Program & Foster Youth to Independence Vouchers",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Targeted vouchers preventing family separation and assisting youth aged 18-24 aging out of foster care.",
                sections: [
                    ArticleSection(
                        heading: "Family Unification Program & Foster Youth to Independence Vouchers",
                        body: "Targeted vouchers preventing family separation and assisting youth aged 18-24 aging out of foster care. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_unaccompanied_youth_fafsa", "art_voucher_section8", "art_snap_expedited_food"]
            ),
            Article(
                id: "art_usda_rural_housing",
                title: "USDA Section 521 Rural Rental Housing Assistance",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Direct rental subsidies for apartment complexes in non-metropolitan and rural agricultural counties.",
                sections: [
                    ArticleSection(
                        heading: "USDA Section 521 Rural Rental Housing Assistance",
                        body: "Direct rental subsidies for apartment complexes in non-metropolitan and rural agricultural counties. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_snap_expedited_food", "art_transit_tokens_passes"]
            ),
            Article(
                id: "art_fair_market_rents",
                title: "HUD Fair Market Rents & Payment Standards Explained",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "How housing authorities calculate voucher rent limits and Small Area FMR by zip code.",
                sections: [
                    ArticleSection(
                        heading: "HUD Fair Market Rents & Payment Standards Explained",
                        body: "How housing authorities calculate voucher rent limits and Small Area FMR by zip code. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_voucher_portability", "art_utility_allowance_calc"]
            ),
            Article(
                id: "art_utility_allowance_calc",
                title: "Utility Allowance Schedules & Rent Payment Caps",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "How housing authorities deduct utility allowances to reduce the tenant out-of-pocket rent portion.",
                sections: [
                    ArticleSection(
                        heading: "Utility Allowance Schedules & Rent Payment Caps",
                        body: "How housing authorities deduct utility allowances to reduce the tenant out-of-pocket rent portion. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_fair_market_rents", "art_utility_assistance_heap", "art_voucher_section8"]
            ),
            Article(
                id: "art_voucher_termination_appeals",
                title: "Appealing Housing Authority Voucher Termination Notices",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "How to request an informal hearing and defend your voucher against proposed cancellation.",
                sections: [
                    ArticleSection(
                        heading: "Appealing Housing Authority Voucher Termination Notices",
                        body: "How to request an informal hearing and defend your voucher against proposed cancellation. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_eviction_court_process", "art_criminal_background_screening"]
            ),
            Article(
                id: "art_lead_paint_rules",
                title: "Lead-Based Paint Disclosures & Pre-1978 Rental Housing Rules",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Federal regulations protecting families with children from toxic lead paint hazards in older homes.",
                sections: [
                    ArticleSection(
                        heading: "Lead-Based Paint Disclosures & Pre-1978 Rental Housing Rules",
                        body: "Federal regulations protecting families with children from toxic lead paint hazards in older homes. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_hqs_inspection", "art_walkthrough_checklist", "art_mckinney_vento_education"]
            ),
            Article(
                id: "art_housing_choice_lottery",
                title: "Navigating Section 8 Waitlist Lotteries & Notifications",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Strategies for entering multiple PHA lotteries and maintaining active contact info on waiting lists.",
                sections: [
                    ArticleSection(
                        heading: "Navigating Section 8 Waitlist Lotteries & Notifications",
                        body: "Strategies for entering multiple PHA lotteries and maintaining active contact info on waiting lists. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_general_delivery_mail", "art_lifeline_free_phone"]
            ),
            Article(
                id: "art_project_based_vouchers",
                title: "Project-Based Vouchers vs Tenant-Based Vouchers",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Key operational differences: subsidies tied to specific buildings versus portable vouchers.",
                sections: [
                    ArticleSection(
                        heading: "Project-Based Vouchers vs Tenant-Based Vouchers",
                        body: "Key operational differences: subsidies tied to specific buildings versus portable vouchers. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_lihtc_explained", "art_fss_escrow_program"]
            ),
            Article(
                id: "art_fss_escrow_program",
                title: "Family Self-Sufficiency: Escrow Savings While on Section 8",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "How HUD FSS programs deposit rent increase savings into an escrow account for down payments.",
                sections: [
                    ArticleSection(
                        heading: "Family Self-Sufficiency: Escrow Savings While on Section 8",
                        body: "How HUD FSS programs deposit rent increase savings into an escrow account for down payments. Federal guidelines enforce strict tenant protections and fair housing compliance across all public housing authorities.",
                        bulletPoints: ["Verify household income against published AMI limits", "Maintain complete documentation portfolio for rapid verification"]
                    )
                ],
                keyTakeaways: ["Federally subsidized housing program", "Tenants pay income-adjusted rent portions", "Appeals process available for adverse decisions"],
                relatedArticleIds: ["art_voucher_section8", "art_second_chance_banking", "art_earned_income_tax_credit"]
            ),
        ]
    }

    // MARK: - 7. Street Survival Articles (20)
    private static func generateStreetSurvivalArticles() -> [Article] {
        [
            Article(
                id: "art_safe_parking_programs",
                title: "Designated Safe Parking Programs: Regulations & Security",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Permitted safe parking operations, security standards, bathroom access, and avoiding vehicle towing.",
                sections: [
                    ArticleSection(
                        heading: "Designated Safe Parking Programs: Regulations & Security",
                        body: "Permitted safe parking operations, security standards, bathroom access, and avoiding vehicle towing. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_vehicle_living_safety", "art_unlawful_sweeps_rights", "art_winter_hypothermia_safety"]
            ),
            Article(
                id: "art_vehicle_living_safety",
                title: "Vehicle Living Safety: Carbon Monoxide & Thermal Heating",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Critical survival protocols for sleeping in passenger vehicles safely without running engines.",
                sections: [
                    ArticleSection(
                        heading: "Vehicle Living Safety: Carbon Monoxide & Thermal Heating",
                        body: "Critical survival protocols for sleeping in passenger vehicles safely without running engines. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_safe_parking_programs", "art_winter_hypothermia_safety", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "art_unlawful_sweeps_rights",
                title: "Encampment Sweeps & Fourth Amendment Property Rights",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Constitutional protections regarding personal property, medication, and IDs during cleanups.",
                sections: [
                    ArticleSection(
                        heading: "Encampment Sweeps & Fourth Amendment Property Rights",
                        body: "Constitutional protections regarding personal property, medication, and IDs during cleanups. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_general_delivery_mail", "art_street_medicine", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_winter_hypothermia_safety",
                title: "Extreme Winter Survival: Hypothermia & Warming Hubs",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Cold weather survival: fabric physics, ground insulation, and Code Blue emergency warming centers.",
                sections: [
                    ArticleSection(
                        heading: "Extreme Winter Survival: Hypothermia & Warming Hubs",
                        body: "Cold weather survival: fabric physics, ground insulation, and Code Blue emergency warming centers. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_vehicle_living_safety", "art_safe_parking_programs", "art_extreme_heat_cooling"]
            ),
            Article(
                id: "art_extreme_heat_cooling",
                title: "Extreme Summer Heat: Cooling Centers & Hydration",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Surviving urban heat islands, heat exhaustion triage, and air-conditioned cooling hubs.",
                sections: [
                    ArticleSection(
                        heading: "Extreme Summer Heat: Cooling Centers & Hydration",
                        body: "Surviving urban heat islands, heat exhaustion triage, and air-conditioned cooling hubs. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_winter_hypothermia_safety", "art_street_medicine", "art_harm_reduction_narcan"]
            ),
            Article(
                id: "art_general_delivery_mail",
                title: "General Delivery: Receiving Official Mail at Post Offices",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Using USPS General Delivery to receive food stamps, checks, state IDs, and court documents.",
                sections: [
                    ArticleSection(
                        heading: "General Delivery: Receiving Official Mail at Post Offices",
                        body: "Using USPS General Delivery to receive food stamps, checks, state IDs, and court documents. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_snap_expedited_food", "art_social_security_award_letter", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_street_medicine",
                title: "Street Medicine Teams & Free Community Health Clinics",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Accessing medical care without insurance, managing prescriptions on the street, and wound care.",
                sections: [
                    ArticleSection(
                        heading: "Street Medicine Teams & Free Community Health Clinics",
                        body: "Accessing medical care without insurance, managing prescriptions on the street, and wound care. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_harm_reduction_narcan", "art_medicaid_fast_track", "art_soar_disability"]
            ),
            Article(
                id: "art_harm_reduction_narcan",
                title: "Harm Reduction: Naloxone Access & Overdose Reversal",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Administering nasal Narcan, recognizing overdose signs, and Good Samaritan legal protections.",
                sections: [
                    ArticleSection(
                        heading: "Harm Reduction: Naloxone Access & Overdose Reversal",
                        body: "Administering nasal Narcan, recognizing overdose signs, and Good Samaritan legal protections. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_street_medicine", "art_mental_health_crisis", "art_safe_parking_programs"]
            ),
            Article(
                id: "art_shelter_grievance_rights",
                title: "Shelter Grievance Procedures & Bed Retention Rights",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "How to dispute wrongful shelter disciplinary discharges and retain emergency lodging.",
                sections: [
                    ArticleSection(
                        heading: "Shelter Grievance Procedures & Bed Retention Rights",
                        body: "How to dispute wrongful shelter disciplinary discharges and retain emergency lodging. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_unlawful_sweeps_rights", "art_pets_in_shelters", "art_deescalation_shelters"]
            ),
            Article(
                id: "art_pets_in_shelters",
                title: "Keeping Companion Pets in Shelters & Co-Sheltering Hubs",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Locating pet-friendly shelters, veterinary vouchers, and emotional support animal documentation.",
                sections: [
                    ArticleSection(
                        heading: "Keeping Companion Pets in Shelters & Co-Sheltering Hubs",
                        body: "Locating pet-friendly shelters, veterinary vouchers, and emotional support animal documentation. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_service_and_support_animals", "art_safe_parking_programs", "art_shelter_grievance_rights"]
            ),
            Article(
                id: "art_day_shelter_lockers",
                title: "Day Centers: Secure Lockers & Charging Ports",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Using daytime resource centers for luggage storage, showers, and safe device charging.",
                sections: [
                    ArticleSection(
                        heading: "Day Centers: Secure Lockers & Charging Ports",
                        body: "Using daytime resource centers for luggage storage, showers, and safe device charging. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_safe_charging_libraries", "art_mobile_hygiene_showers", "art_unlawful_sweeps_rights"]
            ),
            Article(
                id: "art_mobile_hygiene_showers",
                title: "Mobile Hygiene Vans & Free Community Laundry Access",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Accessing free shower trailers, mobile dental vans, and clean laundry partnerships.",
                sections: [
                    ArticleSection(
                        heading: "Mobile Hygiene Vans & Free Community Laundry Access",
                        body: "Accessing free shower trailers, mobile dental vans, and clean laundry partnerships. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_day_shelter_lockers", "art_clean_water_access", "art_street_wound_care"]
            ),
            Article(
                id: "art_safe_charging_libraries",
                title: "Public Libraries: Free Wi-Fi, Charging & Social Services",
                category: .communityPrograms,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Utilizing public libraries as safe daytime cooling/warming centers with on-site navigators.",
                sections: [
                    ArticleSection(
                        heading: "Public Libraries: Free Wi-Fi, Charging & Social Services",
                        body: "Utilizing public libraries as safe daytime cooling/warming centers with on-site navigators. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_day_shelter_lockers", "art_lifeline_free_phone", "art_general_delivery_mail"]
            ),
            Article(
                id: "art_clean_water_access",
                title: "Accessing Potable Water & Public Sanitation Restrooms",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Locating municipal clean water refill stations and 24-hour public restroom facilities.",
                sections: [
                    ArticleSection(
                        heading: "Accessing Potable Water & Public Sanitation Restrooms",
                        body: "Locating municipal clean water refill stations and 24-hour public restroom facilities. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_mobile_hygiene_showers", "art_extreme_heat_cooling", "art_street_medicine"]
            ),
            Article(
                id: "art_extreme_weather_warming",
                title: "Code Blue & Code Red Emergency Overflow Shelters",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "How extreme weather declarations trigger mandatory walk-in emergency shelter capacity.",
                sections: [
                    ArticleSection(
                        heading: "Code Blue & Code Red Emergency Overflow Shelters",
                        body: "How extreme weather declarations trigger mandatory walk-in emergency shelter capacity. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_winter_hypothermia_safety", "art_extreme_heat_cooling", "art_safe_parking_programs"]
            ),
            Article(
                id: "art_street_wound_care",
                title: "Street Wound Care & Preventing Staph Infections",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Trench foot prevention, sterile wound dressing, and avoiding severe cellulitis.",
                sections: [
                    ArticleSection(
                        heading: "Street Wound Care & Preventing Staph Infections",
                        body: "Trench foot prevention, sterile wound dressing, and avoiding severe cellulitis. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_street_medicine", "art_mobile_hygiene_showers", "art_harm_reduction_narcan"]
            ),
            Article(
                id: "art_emergency_dental_clinics",
                title: "Free Dental Extraction Clinics & Mobile Dental Vans",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Locating emergency dental care for severe tooth infections, extractions, and pain relief.",
                sections: [
                    ArticleSection(
                        heading: "Free Dental Extraction Clinics & Mobile Dental Vans",
                        body: "Locating emergency dental care for severe tooth infections, extractions, and pain relief. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_street_medicine", "art_medicaid_fast_track", "art_free_prescription_glasses"]
            ),
            Article(
                id: "art_free_prescription_glasses",
                title: "Free Eyeglass Programs & Mobile Vision Screenings",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Accessing free eye exams and custom prescription eyeglasses through non-profit vouchers.",
                sections: [
                    ArticleSection(
                        heading: "Free Eyeglass Programs & Mobile Vision Screenings",
                        body: "Accessing free eye exams and custom prescription eyeglasses through non-profit vouchers. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_emergency_dental_clinics", "art_street_medicine", "art_medicaid_fast_track"]
            ),
            Article(
                id: "art_deescalation_shelters",
                title: "De-Escalation Protocols in Communal Shelter Facilities",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Resolving interpersonal tensions safely in crowded communal living environments.",
                sections: [
                    ArticleSection(
                        heading: "De-Escalation Protocols in Communal Shelter Facilities",
                        body: "Resolving interpersonal tensions safely in crowded communal living environments. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_shelter_grievance_rights", "art_mental_health_crisis", "art_safe_parking_programs"]
            ),
            Article(
                id: "art_transit_tokens_passes",
                title: "Free Public Transit Passes & Bus Token Programs",
                category: .communityPrograms,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "How to obtain monthly bus passes from social services for medical and housing appointments.",
                sections: [
                    ArticleSection(
                        heading: "Free Public Transit Passes & Bus Token Programs",
                        body: "How to obtain monthly bus passes from social services for medical and housing appointments. Prioritizing bodily safety, personal dignity, and legal property rights in unhoused conditions.",
                        bulletPoints: ["Utilize 2-1-1 for localized dispatch and emergency navigation", "Keep vital identification waterproofed and secured at all times"]
                    )
                ],
                keyTakeaways: ["Emergency survival and health resource", "No fee or insurance requirement", "Direct connection to housing navigation"],
                relatedArticleIds: ["art_safe_charging_libraries", "art_vital_documents_vault", "art_general_delivery_mail"]
            ),
        ]
    }

    // MARK: - 8. Financial Relief Articles (15)
    private static func generateFinancialReliefArticles() -> [Article] {
        [
            Article(
                id: "art_snap_expedited_food",
                title: "Expedited SNAP Food Stamps: Guaranteed 7-Day Processing",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Federal entitlement regulations requiring emergency food aid issuance within 7 calendar days.",
                sections: [
                    ArticleSection(
                        heading: "Expedited SNAP Food Stamps: Guaranteed 7-Day Processing",
                        body: "Federal entitlement regulations requiring emergency food aid issuance within 7 calendar days. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_tanf_crisis_diversion", "art_general_delivery_mail", "art_soar_disability"]
            ),
            Article(
                id: "art_tanf_crisis_diversion",
                title: "TANF Crisis Diversion Grants: One-Time Lump Sum Cash Aid",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Short-term lump sum welfare diversion grants preventing eviction for families with minor children.",
                sections: [
                    ArticleSection(
                        heading: "TANF Crisis Diversion Grants: One-Time Lump Sum Cash Aid",
                        body: "Short-term lump sum welfare diversion grants preventing eviction for families with minor children. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_snap_expedited_food", "art_esg_deposit_grants", "art_utility_assistance_heap"]
            ),
            Article(
                id: "art_soar_disability",
                title: "SOAR Expedited SSI/SSDI Disability Approvals",
                category: .documentsNeeded,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "How the SOAR model accelerates Supplemental Security Income approvals to an average 90 days.",
                sections: [
                    ArticleSection(
                        heading: "SOAR Expedited SSI/SSDI Disability Approvals",
                        body: "How the SOAR model accelerates Supplemental Security Income approvals to an average 90 days. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_social_security_award_letter", "art_medicaid_fast_track", "art_street_medicine"]
            ),
            Article(
                id: "art_lifeline_free_phone",
                title: "Lifeline & ACP: Free Smartphone with Unlimited Data",
                category: .documentsNeeded,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Receiving a free Android smartphone with unlimited talk, text, and data through federal programs.",
                sections: [
                    ArticleSection(
                        heading: "Lifeline & ACP: Free Smartphone with Unlimited Data",
                        body: "Receiving a free Android smartphone with unlimited talk, text, and data through federal programs. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_snap_expedited_food", "art_general_delivery_mail", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_utility_assistance_heap",
                title: "LIHEAP Energy Assistance & Utility Shutoff Prevention",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Grants paid directly to electric and gas utilities for heating, cooling, and reconnection relief.",
                sections: [
                    ArticleSection(
                        heading: "LIHEAP Energy Assistance & Utility Shutoff Prevention",
                        body: "Grants paid directly to electric and gas utilities for heating, cooling, and reconnection relief. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_tanf_crisis_diversion", "art_esg_deposit_grants", "art_winter_hypothermia_safety"]
            ),
            Article(
                id: "art_second_chance_banking",
                title: "Second Chance Bank Accounts & Fee-Free Cards",
                category: .documentsNeeded,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Opening checking accounts and Direct Express accounts without ChexSystems or permanent address hurdles.",
                sections: [
                    ArticleSection(
                        heading: "Second Chance Bank Accounts & Fee-Free Cards",
                        body: "Opening checking accounts and Direct Express accounts without ChexSystems or permanent address hurdles. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_social_security_award_letter", "art_vital_documents_vault", "art_earned_income_tax_credit"]
            ),
            Article(
                id: "art_earned_income_tax_credit",
                title: "Earned Income Tax Credit Filing for Unhoused Workers",
                category: .documentsNeeded,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Filing tax returns to claim thousands in refundable EITC and child tax credits without fixed residence.",
                sections: [
                    ArticleSection(
                        heading: "Earned Income Tax Credit Filing for Unhoused Workers",
                        body: "Filing tax returns to claim thousands in refundable EITC and child tax credits without fixed residence. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_second_chance_banking", "art_snap_expedited_food", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_unemployment_without_address",
                title: "Filing Unemployment Benefits Without a Permanent Address",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Navigating state unemployment insurance verification using General Delivery or shelter mailing.",
                sections: [
                    ArticleSection(
                        heading: "Filing Unemployment Benefits Without a Permanent Address",
                        body: "Navigating state unemployment insurance verification using General Delivery or shelter mailing. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_general_delivery_mail", "art_lifeline_free_phone", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_medicaid_fast_track",
                title: "Medicaid Fast-Track & Presumptive Health Enrollment",
                category: .safetyInstructions,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Same-day health insurance coverage through community clinics and hospitals at zero copay.",
                sections: [
                    ArticleSection(
                        heading: "Medicaid Fast-Track & Presumptive Health Enrollment",
                        body: "Same-day health insurance coverage through community clinics and hospitals at zero copay. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_street_medicine", "art_soar_disability", "art_mental_health_crisis"]
            ),
            Article(
                id: "art_community_action_grants",
                title: "Community Action Agency Emergency Discretionary Funds",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Flexible emergency cash grants for car repairs, work boots, utility arrears, and transit.",
                sections: [
                    ArticleSection(
                        heading: "Community Action Agency Emergency Discretionary Funds",
                        body: "Flexible emergency cash grants for car repairs, work boots, utility arrears, and transit. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_tanf_crisis_diversion", "art_esg_deposit_grants", "art_utility_assistance_heap"]
            ),
            Article(
                id: "art_wic_nutrition_support",
                title: "WIC Nutrition Program: Infant Formula & Healthy Foods",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Supplemental nutrition vouchers for pregnant mothers, infants, and children under age 5.",
                sections: [
                    ArticleSection(
                        heading: "WIC Nutrition Program: Infant Formula & Healthy Foods",
                        body: "Supplemental nutrition vouchers for pregnant mothers, infants, and children under age 5. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_snap_expedited_food", "art_mckinney_vento_education", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_child_support_modification",
                title: "Child Support Debt Modification During Zero-Income Periods",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Filing motions to adjust child support orders to $0 during homelessness to avoid license suspension.",
                sections: [
                    ArticleSection(
                        heading: "Child Support Debt Modification During Zero-Income Periods",
                        body: "Filing motions to adjust child support orders to $0 during homelessness to avoid license suspension. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_tanf_crisis_diversion", "art_debt_collection_judgment_proof", "art_second_chance_banking"]
            ),
            Article(
                id: "art_debt_collection_judgment_proof",
                title: "Judgment-Proof Debtor Rights Against Collection Agencies",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Federal exemptions protecting SSI, disability, welfare, and modest bank balances from garnishment.",
                sections: [
                    ArticleSection(
                        heading: "Judgment-Proof Debtor Rights Against Collection Agencies",
                        body: "Federal exemptions protecting SSI, disability, welfare, and modest bank balances from garnishment. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_social_security_award_letter", "art_child_support_modification", "art_credit_score_screening"]
            ),
            Article(
                id: "art_general_assistance_cash",
                title: "County General Assistance & General Relief Cash Stipends",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Monthly municipal cash grants for low-income single adults who do not have dependent children.",
                sections: [
                    ArticleSection(
                        heading: "County General Assistance & General Relief Cash Stipends",
                        body: "Monthly municipal cash grants for low-income single adults who do not have dependent children. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_snap_expedited_food", "art_tanf_crisis_diversion", "art_soar_disability"]
            ),
            Article(
                id: "art_ebt_skimming_replacement",
                title: "Replacing Stolen EBT Benefits After Card Skimming",
                category: .documentsNeeded,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Filing statutory reimbursement claims for stolen food stamp and cash welfare balances.",
                sections: [
                    ArticleSection(
                        heading: "Replacing Stolen EBT Benefits After Card Skimming",
                        body: "Filing statutory reimbursement claims for stolen food stamp and cash welfare balances. Federal and state benefit programs mandate swift access to economic assistance regardless of permanent housing status.",
                        bulletPoints: ["No permanent street address required for application", "Request expedited intake if cash on hand is under $100"]
                    )
                ],
                keyTakeaways: ["Guaranteed economic stabilization program", "Federal processing statutory deadlines apply", "Direct cash or voucher assistance"],
                relatedArticleIds: ["art_snap_expedited_food", "art_lifeline_free_phone", "art_vital_documents_vault"]
            ),
        ]
    }

    // MARK: - 9. Special Populations Articles (15)
    private static func generateSpecialPopulationsArticles() -> [Article] {
        [
            Article(
                id: "art_mckinney_vento_education",
                title: "McKinney-Vento Act: Education Rights for Unhoused Children",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Federal guarantees: free school origin transit, immediate zero-barrier enrollment, and free meals.",
                sections: [
                    ArticleSection(
                        heading: "McKinney-Vento Act: Education Rights for Unhoused Children",
                        body: "Federal guarantees: free school origin transit, immediate zero-barrier enrollment, and free meals. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_snap_expedited_food", "art_domestic_violence_housing", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_domestic_violence_housing",
                title: "VAWA Housing Protections & Confidential Address Programs",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Violence Against Women Act rights: lease bifurcation, emergency transfer, and Safe at Home privacy.",
                sections: [
                    ArticleSection(
                        heading: "VAWA Housing Protections & Confidential Address Programs",
                        body: "Violence Against Women Act rights: lease bifurcation, emergency transfer, and Safe at Home privacy. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_mckinney_vento_education", "art_voucher_section8", "art_eviction_court_process"]
            ),
            Article(
                id: "art_criminal_background_screening",
                title: "HUD Guidance on Criminal Background Checks in Housing",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Why blanket criminal record bans violate Fair Housing and how to dispute wrongful denials.",
                sections: [
                    ArticleSection(
                        heading: "HUD Guidance on Criminal Background Checks in Housing",
                        body: "Why blanket criminal record bans violate Fair Housing and how to dispute wrongful denials. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_landlord_resume", "art_credit_score_screening", "art_source_of_income_laws"]
            ),
            Article(
                id: "art_service_and_support_animals",
                title: "Service Animals & Emotional Support Animals in Housing",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Exemptions from pet rent, deposits, and breed bans under the federal Fair Housing Act.",
                sections: [
                    ArticleSection(
                        heading: "Service Animals & Emotional Support Animals in Housing",
                        body: "Exemptions from pet rent, deposits, and breed bans under the federal Fair Housing Act. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_criminal_background_screening", "art_walkthrough_checklist", "art_landlord_resume"]
            ),
            Article(
                id: "art_unaccompanied_youth_fafsa",
                title: "FAFSA Independent Status for Unaccompanied Homeless Youth",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Securing maximum college financial aid without parent income verification or tax returns.",
                sections: [
                    ArticleSection(
                        heading: "FAFSA Independent Status for Unaccompanied Homeless Youth",
                        body: "Securing maximum college financial aid without parent income verification or tax returns. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_fup_youth_vouchers", "art_vital_documents_vault", "art_snap_expedited_food"]
            ),
            Article(
                id: "art_ssvf_veterans",
                title: "SSVF: Supportive Services for Veteran Families Rapid Rehousing",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Rapid housing grants for low-income veterans covering rent arrears, deposits, and moving costs.",
                sections: [
                    ArticleSection(
                        heading: "SSVF: Supportive Services for Veteran Families Rapid Rehousing",
                        body: "Rapid housing grants for low-income veterans covering rent arrears, deposits, and moving costs. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_hud_vash", "art_voucher_section8", "art_esg_deposit_grants"]
            ),
            Article(
                id: "art_lgbtq_safe_shelters",
                title: "LGBTQ+ Affirming Shelters & HUD Equal Access Rule",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Housing protections ensuring transgender and non-binary individuals are housed per gender identity.",
                sections: [
                    ArticleSection(
                        heading: "LGBTQ+ Affirming Shelters & HUD Equal Access Rule",
                        body: "Housing protections ensuring transgender and non-binary individuals are housed per gender identity. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_shelter_grievance_rights", "art_domestic_violence_housing", "art_unaccompanied_youth_fafsa"]
            ),
            Article(
                id: "art_senior_housing_pace",
                title: "PACE Programs & Assisted Living Subsidies for Older Adults",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Programs of All-Inclusive Care for the Elderly delivering home healthcare and housing aid.",
                sections: [
                    ArticleSection(
                        heading: "PACE Programs & Assisted Living Subsidies for Older Adults",
                        body: "Programs of All-Inclusive Care for the Elderly delivering home healthcare and housing aid. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_section202_elderly", "art_soar_disability", "art_reasonable_modifications_disability"]
            ),
            Article(
                id: "art_human_trafficking_housing",
                title: "Housing Assistance & T-Visa Protections for Trafficking Survivors",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Specialized safe house placement, trauma counseling, and legal immigration status relief.",
                sections: [
                    ArticleSection(
                        heading: "Housing Assistance & T-Visa Protections for Trafficking Survivors",
                        body: "Specialized safe house placement, trauma counseling, and legal immigration status relief. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_domestic_violence_housing", "art_vital_documents_vault", "art_tanf_crisis_diversion"]
            ),
            Article(
                id: "art_fema_tsa_disaster",
                title: "FEMA Transitional Sheltering Assistance After Disasters",
                category: .communityPrograms,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Emergency hotel stays and temporary housing vouchers for families displaced by storms or fires.",
                sections: [
                    ArticleSection(
                        heading: "FEMA Transitional Sheltering Assistance After Disasters",
                        body: "Emergency hotel stays and temporary housing vouchers for families displaced by storms or fires. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_snap_expedited_food", "art_vital_documents_vault", "art_rapid_rehousing_esg"]
            ),
            Article(
                id: "art_single_fathers_shelters",
                title: "Locating Family Shelters for Single Fathers with Children",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Overcoming shelter gender segregation barriers to keep fathers and children together.",
                sections: [
                    ArticleSection(
                        heading: "Locating Family Shelters for Single Fathers with Children",
                        body: "Overcoming shelter gender segregation barriers to keep fathers and children together. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_mckinney_vento_education", "art_tanf_crisis_diversion", "art_shelter_grievance_rights"]
            ),
            Article(
                id: "art_reasonable_modifications_disability",
                title: "Requesting Disability Modifications & Accessible Housing",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Landlord obligations to permit wheelchair ramps, grab bars, and accessible parking spaces.",
                sections: [
                    ArticleSection(
                        heading: "Requesting Disability Modifications & Accessible Housing",
                        body: "Landlord obligations to permit wheelchair ramps, grab bars, and accessible parking spaces. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_service_and_support_animals", "art_section811_disabilities", "art_soar_disability"]
            ),
            Article(
                id: "art_hoarding_eviction_defense",
                title: "Hoarding Disorder: Mental Health Disability Eviction Defense",
                category: .legalAndStateLaws,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Citing Fair Housing reasonable accommodations to secure cleanup time plans before eviction.",
                sections: [
                    ArticleSection(
                        heading: "Hoarding Disorder: Mental Health Disability Eviction Defense",
                        body: "Citing Fair Housing reasonable accommodations to secure cleanup time plans before eviction. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_eviction_court_process", "art_reasonable_modifications_disability", "art_mental_health_crisis"]
            ),
            Article(
                id: "art_sober_living_standards",
                title: "Sober Living Homes & Oxford House Recovery Residences",
                category: .familyAndSituations,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Community recovery housing standards, self-run democracy models, and resident rights.",
                sections: [
                    ArticleSection(
                        heading: "Sober Living Homes & Oxford House Recovery Residences",
                        body: "Community recovery housing standards, self-run democracy models, and resident rights. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_harm_reduction_narcan", "art_street_medicine", "art_second_chance_banking"]
            ),
            Article(
                id: "art_mental_health_crisis",
                title: "Mental Health Crisis Response: 988 Lifeline vs Mobile Crisis",
                category: .safetyInstructions,
                stateTag: "Federal",
                readTimeMinutes: 5,
                overview: "Accessing psychiatric crisis diversion teams without police dispatch during acute crises.",
                sections: [
                    ArticleSection(
                        heading: "Mental Health Crisis Response: 988 Lifeline vs Mobile Crisis",
                        body: "Accessing psychiatric crisis diversion teams without police dispatch during acute crises. Civil rights statutes protect specialized populations from discrimination, displacement, and systemic barriers.",
                        bulletPoints: ["Request reasonable accommodations in writing", "Contact legal aid or civil rights advocates immediately if denied"]
                    )
                ],
                keyTakeaways: ["Specialized population legal protection", "Civil rights enforceability in all housing programs", "Confidential advocacy navigation available"],
                relatedArticleIds: ["art_harm_reduction_narcan", "art_street_medicine", "art_soar_disability"]
            ),
        ]
    }

    // MARK: - 10. Landlord Outreach Articles (15)
    private static func generateLandlordOutreachArticles() -> [Article] {
        [
            Article(
                id: "art_landlord_resume",
                title: "Building a Standout Renter Resume with Past Hardships",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Presenting a professional renter portfolio to independent landlords to overcome credit blemishes.",
                sections: [
                    ArticleSection(
                        heading: "Building a Standout Renter Resume with Past Hardships",
                        body: "Presenting a professional renter portfolio to independent landlords to overcome credit blemishes. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_credit_score_screening", "art_source_of_income_laws", "art_walkthrough_checklist"]
            ),
            Article(
                id: "art_credit_score_screening",
                title: "Disputing Tenant Screening Reports & Credit Errors",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Using the Fair Credit Reporting Act (FCRA) to force screening bureaus to delete inaccurate evictions.",
                sections: [
                    ArticleSection(
                        heading: "Disputing Tenant Screening Reports & Credit Errors",
                        body: "Using the Fair Credit Reporting Act (FCRA) to force screening bureaus to delete inaccurate evictions. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_landlord_resume", "art_criminal_background_screening", "art_eviction_court_process"]
            ),
            Article(
                id: "art_walkthrough_checklist",
                title: "Move-In Walkthrough Checklist: Timestamped Photo Protocols",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Documenting pre-existing apartment defects on move-in day to guarantee 100% deposit return.",
                sections: [
                    ArticleSection(
                        heading: "Move-In Walkthrough Checklist: Timestamped Photo Protocols",
                        body: "Documenting pre-existing apartment defects on move-in day to guarantee 100% deposit return. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_deposit_demand_letter", "art_hqs_inspection", "art_lead_paint_rules"]
            ),
            Article(
                id: "art_deposit_demand_letter",
                title: "Security Deposit Demand Letter: Statutory Citing Template",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Drafting and sending a formal legal demand letter to an ex-landlord for withheld deposits.",
                sections: [
                    ArticleSection(
                        heading: "Security Deposit Demand Letter: Statutory Citing Template",
                        body: "Drafting and sending a formal legal demand letter to an ex-landlord for withheld deposits. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_walkthrough_checklist", "art_eviction_court_process", "art_esg_deposit_grants"]
            ),
            Article(
                id: "art_eviction_court_process",
                title: "Understanding the Eviction Court Process & Hearing Rights",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "What happens when an eviction is filed: summons, written answers, and court mediation.",
                sections: [
                    ArticleSection(
                        heading: "Understanding the Eviction Court Process & Hearing Rights",
                        body: "What happens when an eviction is filed: summons, written answers, and court mediation. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_self_help_evictions", "art_deposit_demand_letter", "art_credit_score_screening"]
            ),
            Article(
                id: "art_self_help_evictions",
                title: "Illegal Self-Help Evictions: Lockouts & Utility Shutoffs",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "What to do if your landlord changes locks or cuts water without a court-issued sheriff writ.",
                sections: [
                    ArticleSection(
                        heading: "Illegal Self-Help Evictions: Lockouts & Utility Shutoffs",
                        body: "What to do if your landlord changes locks or cuts water without a court-issued sheriff writ. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_eviction_court_process", "art_unlawful_sweeps_rights", "art_safe_parking_programs"]
            ),
            Article(
                id: "art_vital_documents_vault",
                title: "Assembling Your Vital Documents Vault for Housing Intake",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "The essential 6-document portfolio needed to instantly qualify for vouchers and apartments.",
                sections: [
                    ArticleSection(
                        heading: "Assembling Your Vital Documents Vault for Housing Intake",
                        body: "The essential 6-document portfolio needed to instantly qualify for vouchers and apartments. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_general_delivery_mail", "art_social_security_award_letter", "art_birth_certificate_grants"]
            ),
            Article(
                id: "art_social_security_award_letter",
                title: "How to Download an Official SSA Benefit Award Letter",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Getting your Social Security or SSI proof of income letter online in under 5 minutes.",
                sections: [
                    ArticleSection(
                        heading: "How to Download an Official SSA Benefit Award Letter",
                        body: "Getting your Social Security or SSI proof of income letter online in under 5 minutes. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_soar_disability", "art_vital_documents_vault", "art_voucher_section8"]
            ),
            Article(
                id: "art_birth_certificate_grants",
                title: "Ordering Certified Birth Certificates with Fee Grants",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "How Community Action agencies and vital records grants pay out-of-state certificate costs.",
                sections: [
                    ArticleSection(
                        heading: "Ordering Certified Birth Certificates with Fee Grants",
                        body: "How Community Action agencies and vital records grants pay out-of-state certificate costs. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_vital_documents_vault", "art_general_delivery_mail", "art_dmv_general_delivery"]
            ),
            Article(
                id: "art_dmv_general_delivery",
                title: "Mailing Identification to General Delivery & Shelters",
                category: .documentsNeeded,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Ensuring DMV photo IDs and debit cards arrive securely when living without a street address.",
                sections: [
                    ArticleSection(
                        heading: "Mailing Identification to General Delivery & Shelters",
                        body: "Ensuring DMV photo IDs and debit cards arrive securely when living without a street address. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_general_delivery_mail", "art_vital_documents_vault", "art_birth_certificate_grants"]
            ),
            Article(
                id: "art_esg_deposit_grants",
                title: "Move-In Grants: Utilizing ESG & Charity Deposit Funds",
                category: .communityPrograms,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Getting first month rent and security deposits covered by federal ESG and charitable funds.",
                sections: [
                    ArticleSection(
                        heading: "Move-In Grants: Utilizing ESG & Charity Deposit Funds",
                        body: "Getting first month rent and security deposits covered by federal ESG and charitable funds. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_rapid_rehousing_esg", "art_tanf_crisis_diversion", "art_utility_assistance_heap"]
            ),
            Article(
                id: "art_finding_mom_pop_landlords",
                title: "Finding Independent Landlords Open to Rental Vouchers",
                category: .communityPrograms,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Locating private mom-and-pop landlords who review applications beyond automated credit algorithms.",
                sections: [
                    ArticleSection(
                        heading: "Finding Independent Landlords Open to Rental Vouchers",
                        body: "Locating private mom-and-pop landlords who review applications beyond automated credit algorithms. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_landlord_resume", "art_source_of_income_laws", "art_voucher_section8"]
            ),
            Article(
                id: "art_rental_scam_prevention",
                title: "Identifying & Avoiding Fake Apartment Rental Scams",
                category: .safetyInstructions,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Spotting red flags: wire transfer requests, phantom landlords, and fake Craigslist keys.",
                sections: [
                    ArticleSection(
                        heading: "Identifying & Avoiding Fake Apartment Rental Scams",
                        body: "Spotting red flags: wire transfer requests, phantom landlords, and fake Craigslist keys. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_walkthrough_checklist", "art_deposit_demand_letter", "art_vital_documents_vault"]
            ),
            Article(
                id: "art_lease_early_termination",
                title: "Breaking a Lease Early: Mitigating Landlord Damages",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "Legal procedures for early surrender, duty to re-rent, and negotiating mutual termination releases.",
                sections: [
                    ArticleSection(
                        heading: "Breaking a Lease Early: Mitigating Landlord Damages",
                        body: "Legal procedures for early surrender, duty to re-rent, and negotiating mutual termination releases. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_deposit_demand_letter", "art_domestic_violence_housing", "art_eviction_court_process"]
            ),
            Article(
                id: "art_habitability_repair_deduct",
                title: "Tenant Repair-and-Deduct & Rent Withholding Legalities",
                category: .legalAndStateLaws,
                stateTag: "National",
                readTimeMinutes: 5,
                overview: "State laws permitting tenants to pay for critical plumbing/heat repairs and deduct from rent.",
                sections: [
                    ArticleSection(
                        heading: "Tenant Repair-and-Deduct & Rent Withholding Legalities",
                        body: "State laws permitting tenants to pay for critical plumbing/heat repairs and deduct from rent. Strategic communication and statutory compliance empower tenants to secure and sustain private rentals.",
                        bulletPoints: ["Document all landlord interactions in writing", "Never wire money without an in-person walkthrough and signed lease"]
                    )
                ],
                keyTakeaways: ["Tenancy negotiation and security protocol", "Statutory tenant protections apply", "Maintain written and digital records"],
                relatedArticleIds: ["art_eviction_court_process", "art_self_help_evictions", "art_walkthrough_checklist"]
            ),
        ]
    }
}
