import SwiftUI

struct AddContactSheet: View {
    @Environment(HousingStore.self) private var store
    @Environment(\.dismiss) private var dismiss
    
    @State private var name: String = ""
    @State private var role: String = "Housing Navigator"
    @State private var organization: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    @State private var notes: String = ""
    
    private let commonRoles = [
        "Housing Navigator",
        "Caseworker",
        "Legal Advocate",
        "Emergency Contact",
        "Landlord / Property Manager",
        "Shelter Specialist"
    ]
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Contact Information") {
                    TextField("Full Name", text: $name)
                    
                    Picker("Role", selection: $role) {
                        ForEach(commonRoles, id: \.self) { roleOption in
                            Text(roleOption).tag(roleOption)
                        }
                    }
                    
                    TextField("Organization or Agency", text: $organization)
                    TextField("Phone Number", text: $phone)
                        .keyboardType(.phonePad)
                    TextField("Email (Optional)", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                }
                
                Section("Notes") {
                    TextField("Office hours, desk extension, case number...", text: $notes, axis: .vertical)
                }
            }
            .navigationTitle("Add Trusted Contact")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let newContact = TrustedContact(
                            name: name.trimmingCharacters(in: .whitespacesAndNewlines),
                            role: role,
                            organization: organization.trimmingCharacters(in: .whitespacesAndNewlines),
                            phone: phone.trimmingCharacters(in: .whitespacesAndNewlines),
                            email: email.trimmingCharacters(in: .whitespacesAndNewlines),
                            notes: notes.trimmingCharacters(in: .whitespacesAndNewlines)
                        )
                        store.addContact(newContact)
                        dismiss()
                    }
                    .disabled(name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
            }
        }
    }
}
