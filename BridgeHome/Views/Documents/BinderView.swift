import SwiftUI

struct BinderView: View {
    @Environment(HousingStore.self) private var store
    @Environment(\.openURL) private var openURL
    @State private var showingAddContact = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                    
                    // Editorial Subtitle
                    Text("Vital paperwork and support contacts needed for housing applications.")
                        .font(.system(.body, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineSpacing(3)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 2)
                    
                    // Document Checklist Section
                    VStack(alignment: .leading, spacing: 14) {
                        SectionHeader(
                            title: "Application Documents",
                            subtitle: "Select any item to review how to obtain it or record notes"
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
                                        .padding(.leading, 56)
                                }
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    }
                    
                    Divider()
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // Trusted Contacts Section
                    VStack(alignment: .leading, spacing: 14) {
                        SectionHeader(
                            title: "Trusted Contacts",
                            subtitle: "Direct access to your navigators and case managers",
                            actionTitle: "Add Contact",
                            action: {
                                showingAddContact = true
                            }
                        )
                        
                        if store.contacts.isEmpty {
                            Text("No contacts saved. Tap 'Add Contact' to store your caseworker or navigator's number.")
                                .font(.system(.subheadline, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                                .padding(.vertical, 8)
                        } else {
                            VStack(spacing: 0) {
                                ForEach(store.contacts) { contact in
                                    ContactRow(contact: contact)
                                    
                                    if contact.id != store.contacts.last?.id {
                                        Divider()
                                            .padding(.leading, 56)
                                    }
                                }
                            }
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                    }
                    
                    // Privacy Reassurance
                    VStack(alignment: .leading, spacing: 6) {
                        Text("All documents, notes, and contacts are stored strictly on your device. BridgeHome never uploads or tracks your data.")
                            .font(.system(.footnote, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(3)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .navigationTitle("Binder")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingAddContact = true
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(Theme.Colors.accent)
                    }
                    .accessibilityLabel("Add Contact")
                }
            }
            .sheet(isPresented: $showingAddContact) {
                AddContactSheet()
            }
        }
    }
}

private struct DocumentRow: View {
    let document: DocumentItem
    
    var body: some View {
        HStack(alignment: .top, spacing: Theme.Spacing.element) {
            // Status Icon
            ZStack {
                Circle()
                    .fill(Theme.Colors.calloutBackground)
                    .frame(width: 40, height: 40)
                
                Image(systemName: document.status.iconName)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(statusColor)
            }
            .accessibilityHidden(true)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(document.name)
                    .font(.system(.body, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                HStack(spacing: 6) {
                    Text(document.status.rawValue)
                        .font(.system(.caption, design: .default, weight: .medium))
                        .foregroundStyle(statusColor)
                    
                    Text("•")
                        .font(.system(.caption, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                    
                    Text(document.category.rawValue)
                        .font(.system(.caption, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                }
            }
            
            Spacer(minLength: 8)
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(Theme.Colors.secondaryText.opacity(0.4))
                .padding(.top, 12)
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

private struct ContactRow: View {
    @Environment(HousingStore.self) private var store
    @Environment(\.openURL) private var openURL
    let contact: TrustedContact
    
    var body: some View {
        HStack(alignment: .top, spacing: Theme.Spacing.element) {
            // Avatar Circle
            ZStack {
                Circle()
                    .fill(Theme.Colors.calloutBackground)
                    .frame(width: 40, height: 40)
                
                Text(initials)
                    .font(.system(.subheadline, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
            }
            .accessibilityHidden(true)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(contact.name)
                    .font(.system(.body, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Text("\(contact.role) • \(contact.organization)")
                    .font(.system(.caption, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineLimit(1)
                
                if !contact.notes.isEmpty {
                    Text(contact.notes)
                        .font(.system(.caption2, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineLimit(1)
                        .padding(.top, 1)
                }
            }
            
            Spacer(minLength: 8)
            
            HStack(spacing: 8) {
                if let phoneURL = contact.phoneURL {
                    Button {
                        openURL(phoneURL)
                    } label: {
                        Image(systemName: "phone.fill")
                            .font(.system(size: 13))
                            .foregroundStyle(Theme.Colors.accent)
                            .frame(width: 32, height: 32)
                            .background(Theme.Colors.calloutBackground)
                            .clipShape(Circle())
                    }
                    .buttonStyle(.plain)
                    .accessibilityLabel("Call \(contact.name)")
                }
                
                if let smsURL = contact.smsURL {
                    Button {
                        openURL(smsURL)
                    } label: {
                        Image(systemName: "message.fill")
                            .font(.system(size: 13))
                            .foregroundStyle(Theme.Colors.primaryText)
                            .frame(width: 32, height: 32)
                            .background(Theme.Colors.calloutBackground)
                            .clipShape(Circle())
                    }
                    .buttonStyle(.plain)
                    .accessibilityLabel("Text \(contact.name)")
                }
            }
            .padding(.top, 4)
        }
        .padding(.vertical, 12)
        .contentShape(Rectangle())
        .contextMenu {
            Button(role: .destructive) {
                store.deleteContact(id: contact.id)
            } label: {
                Label("Delete Contact", systemImage: "trash")
            }
        }
    }
    
    private var initials: String {
        let parts = contact.name.split(separator: " ")
        if parts.count >= 2, let first = parts.first?.first, let last = parts.last?.first {
            return "\(first)\(last)".uppercased()
        } else if let first = parts.first?.first {
            return String(first).uppercased()
        }
        return "C"
    }
}

#Preview {
    BinderView()
        .environment(HousingStore())
}
