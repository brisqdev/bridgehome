import SwiftUI

struct SettingsView: View {
    @Environment(HousingStore.self) private var store
    @Environment(\.dismiss) private var dismiss
    @Environment(\.openURL) private var openURL
    
    @State private var showingResetAlert = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("BridgeHome")
                            .font(.system(.title2, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        Text("A calm, private community resource created to help people navigate the steps toward housing stability with dignity and clarity.")
                            .font(.system(.subheadline, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .lineSpacing(2)
                    }
                    .padding(.vertical, 4)
                }
                
                Section("Privacy & Storage") {
                    Label {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("100% On-Device & Offline")
                                .font(.system(.body, design: .default, weight: .medium))
                            Text("Your notes, checklist progress, and contacts are stored strictly on your iPhone. Nothing is uploaded to any server or tracked.")
                                .font(.system(.caption, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                        }
                    } icon: {
                        Image(systemName: "lock.shield.fill")
                            .foregroundStyle(Theme.Colors.accent)
                    }
                }
                
                Section("Emergency Support Lines") {
                    Button {
                        if let url = URL(string: "tel:211") { openURL(url) }
                    } label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("2-1-1 Community Helpline")
                                    .font(.system(.body, design: .default, weight: .medium))
                                    .foregroundStyle(Theme.Colors.primaryText)
                                Text("24/7 Emergency shelter, food, and utility dispatch")
                                    .font(.system(.caption, design: .default))
                                    .foregroundStyle(Theme.Colors.secondaryText)
                            }
                            Spacer()
                            Image(systemName: "phone.fill")
                                .font(.system(size: 14))
                                .foregroundStyle(Theme.Colors.accent)
                        }
                    }
                    
                    Button {
                        if let url = URL(string: "tel:988") { openURL(url) }
                    } label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("9-8-8 Suicide & Crisis Lifeline")
                                    .font(.system(.body, design: .default, weight: .medium))
                                    .foregroundStyle(Theme.Colors.primaryText)
                                Text("Free, confidential 24/7 mental wellness support")
                                    .font(.system(.caption, design: .default))
                                    .foregroundStyle(Theme.Colors.secondaryText)
                            }
                            Spacer()
                            Image(systemName: "phone.fill")
                                .font(.system(size: 14))
                                .foregroundStyle(Theme.Colors.accent)
                        }
                    }
                }
                
                Section("Data Management") {
                    Button(role: .destructive) {
                        showingResetAlert = true
                    } label: {
                        Text("Reset App to Sample Data")
                    }
                }
                
                Section {
                    HStack {
                        Spacer()
                        Text("BridgeHome • Version 1.0.0")
                            .font(.system(.caption, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                        Spacer()
                    }
                }
                .listRowBackground(Color.clear)
            }
            .navigationTitle("About BridgeHome")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
            .alert("Reset Data?", isPresented: $showingResetAlert) {
                Button("Cancel", role: .cancel) { }
                Button("Reset", role: .destructive) {
                    store.resetToDefaults()
                }
            } message: {
                Text("This will restore default guide steps, sample resources, and clear custom notes.")
            }
        }
    }
}
