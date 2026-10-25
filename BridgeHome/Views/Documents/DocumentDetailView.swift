import SwiftUI

struct DocumentDetailView: View {
    @Environment(HousingStore.self) private var store
    let documentId: String
    
    @State private var notesText: String = ""
    @State private var isNotesLoaded: Bool = false
    
    private var document: DocumentItem? {
        store.documents.first(where: { $0.id == documentId })
    }
    
    var body: some View {
        Group {
            if let document {
                ScrollView {
                    VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                        
                        // Header
                        VStack(alignment: .leading, spacing: 8) {
                            Text(document.category.rawValue.uppercased())
                                .font(.system(.caption, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.accent)
                                .tracking(0.5)
                            
                            Text(document.name)
                                .font(.system(.title, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.primaryText)
                            
                            Text(document.purpose)
                                .font(.system(.body, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .lineSpacing(2)
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                        
                        // Status Picker
                        VStack(alignment: .leading, spacing: 10) {
                            SectionHeader(title: "Status")
                            
                            Picker("Status", selection: Binding(
                                get: { document.status },
                                set: { newStatus in
                                    store.updateDocumentStatus(documentId: document.id, status: newStatus)
                                }
                            )) {
                                ForEach(DocumentStatus.allCases) { status in
                                    Text(status.rawValue).tag(status)
                                }
                            }
                            .pickerStyle(.segmented)
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                        
                        // How to Acquire
                        VStack(alignment: .leading, spacing: 8) {
                            SectionHeader(title: "How to Obtain")
                            
                            Text(document.howToAcquire)
                                .font(.system(.body, design: .default))
                                .foregroundStyle(Theme.Colors.primaryText)
                                .lineSpacing(4)
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                        
                        // Fee Waiver Note if available
                        if let waiver = document.feeWaiverNote {
                            CalloutBox(
                                icon: "banknote",
                                title: "Fee Waiver Information",
                                message: waiver
                            )
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                        
                        // Personal Notes
                        VStack(alignment: .leading, spacing: 10) {
                            SectionHeader(
                                title: "Document Notes",
                                subtitle: "Track expiration dates, document numbers, or case notes."
                            )
                            
                            TextField("Add notes here...", text: $notesText, axis: .vertical)
                                .font(.system(.body, design: .default))
                                .padding(14)
                                .background(Theme.Colors.secondaryBackground)
                                .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.standard, style: .continuous))
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                                .onChange(of: notesText) { _, newValue in
                                    store.updateDocumentNotes(documentId: document.id, notes: newValue)
                                }
                        }
                        .padding(.bottom, Theme.Spacing.section)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    if !isNotesLoaded {
                        notesText = document.notes
                        isNotesLoaded = true
                    }
                }
            } else {
                Text("Document not found")
                    .foregroundStyle(Theme.Colors.secondaryText)
            }
        }
    }
}
