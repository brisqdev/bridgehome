import SwiftUI

struct BinderView: View {
    @Environment(HousingStore.self) private var store
    @Environment(\.openURL) private var openURL
    @State private var showingAddContact = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                    
                    // Large Header
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Housing Binder")
                            .font(.system(.largeTitle, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        Text("Keep track of the vital documentation landlords and housing programs require, alongside your support contacts.")
                            .font(.system(.body, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(2)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.top, 4)
                    
                    // Document Checklist Section
                    VStack(alignment: .leading, spacing: 12) {
                        SectionHeader(
                            title: "Application Documents",
                            subtitle: "Tap any item to review how to acquire it or add private notes"
                        )
                        
                        VStack(spacing: 0) {
                            ForEach(store.documents) { document in
                                NavigationLink {
                                    DocumentDetailView(documentId: document.id)
                                } label: {
                                    DocumentRow(document: document)
                                }
                                .buttonStyle(.plain)
                                
                                if document.id != store.documents.last?.id {
                                    Divider()
                                        .padding(.leading, 44)
                                }
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    }
                    
                    // Trusted Contacts Section
                    VStack(alignment: .leading, spacing: 12) {
                        SectionHeader(
                            title: "Trusted Contacts",
                            subtitle: "Direct access to your navigators, case managers, and advocates",
                            actionTitle: "Add Contact",
                            action: {
                                showingAddContact = true
                            }
                        )
                        
                        if store.contacts.isEmpty {
                            Text("No contacts saved. Tap 'Add Contact' to save your caseworker or navigator's number.")
                                .font(.system(.subheadline, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                                .padding(.vertical, 8)
                        } else {
                            VStack(spacing: 12) {
                                ForEach(store.contacts) { contact in
                                    ContactCard(contact: contact)
                                }
                            }
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                    }
                    
                    // Privacy Reassurance
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Privacy Notice: All notes, contacts, and document records are stored exclusively on your device. BridgeHome never uploads personal data.")
                            .font(.system(.footnote, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(3)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $showingAddContact) {
                AddContactSheet()
            }
        }
    }
}

private struct DocumentRow: View {
    let document: DocumentItem
    
    var body: some View {
        HStack(alignment: .center, spacing: Theme.Spacing.element) {
            Image(systemName: document.status.iconName)
                .font(.system(size: 20))
                .foregroundStyle(statusColor)
                .frame(width: 28, height: 28)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(document.name)
                    .font(.system(.body, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Text(document.status.rawValue)
                    .font(.system(.caption, design: .default, weight: .medium))
                    .foregroundStyle(statusColor)
            }
            
            Spacer(minLength: 8)
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(Theme.Colors.secondaryText.opacity(0.5))
        }
        .padding(.vertical, 10)
        .contentShape(Rectangle())
    }
    
    private var statusColor: Color {
        switch document.status {
        case .haveIt:
            return Theme.Colors.accent
        case .inProgress:
            return .orange
        case .needed:
            return Theme.Colors.secondaryText.opacity(0.6)
        }
    }
}

private struct ContactCard: View {
    @Environment(HousingStore.self) private var store
    @Environment(\.openURL) private var openURL
    let contact: TrustedContact
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(contact.name)
                        .font(.system(.headline, design: .default, weight: .semibold))
                        .foregroundStyle(Theme.Colors.primaryText)
                    
                    Text("\(contact.role) • \(contact.organization)")
                        .font(.system(.subheadline, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                }
                
                Spacer()
                
                // Quick Call Button
                if let phoneURL = contact.phoneURL {
                    Button {
                        openURL(phoneURL)
                    } label: {
                        Image(systemName: "phone.fill")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                            .frame(width: 36, height: 36)
                            .background(Theme.Colors.accent)
                            .clipShape(Circle())
                    }
                    .accessibilityLabel("Call \(contact.name)")
                }
                
                // Quick SMS Button
                if let smsURL = contact.smsURL {
                    Button {
                        openURL(smsURL)
                    } label: {
                        Image(systemName: "message.fill")
                            .font(.system(size: 14))
                            .foregroundStyle(Theme.Colors.primaryText)
                            .frame(width: 36, height: 36)
                            .background(Theme.Colors.calloutBackground)
                            .clipShape(Circle())
                    }
                    .accessibilityLabel("Text \(contact.name)")
                }
            }
            
            if !contact.notes.isEmpty {
                Text(contact.notes)
                    .font(.system(.footnote, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineLimit(2)
            }
        }
        .padding(16)
        .background(Theme.Colors.secondaryBackground)
        .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
        .contextMenu {
            Button(role: .destructive) {
                store.deleteContact(id: contact.id)
            } label: {
                Label("Delete Contact", systemImage: "trash")
            }
        }
    }
}
