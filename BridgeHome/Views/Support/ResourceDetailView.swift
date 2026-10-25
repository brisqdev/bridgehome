import SwiftUI

struct ResourceDetailView: View {
    @Environment(HousingStore.self) private var store
    @Environment(\.openURL) private var openURL
    
    let resource: Resource
    
    private var isSaved: Bool {
        store.isResourceSaved(resource.id)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                
                // Header
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(resource.category.rawValue.uppercased())
                            .font(.system(.caption, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .tracking(0.8)
                        
                        Spacer()
                        
                        if resource.isEmergencyHotline {
                            Label("Emergency Dispatch", systemImage: "bolt.fill")
                                .font(.system(.caption, design: .default, weight: .semibold))
                                .foregroundStyle(Theme.Colors.primaryText)
                        }
                    }
                    
                    Text(resource.name)
                        .font(.system(.title, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                    
                    Text(resource.hours)
                        .font(.system(.subheadline, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                }
                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                .padding(.top, 4)
                
                // Action Buttons (Apple Music style)
                HStack(spacing: 12) {
                    // Call Button
                    if let phoneURL = resource.phoneURL {
                        Button {
                            openURL(phoneURL)
                        } label: {
                            HStack(spacing: 6) {
                                Image(systemName: "phone.fill")
                                Text("Call")
                            }
                            .font(.system(.subheadline, design: .default, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background(Theme.Colors.accent)
                            .foregroundStyle(Color.white)
                            .clipShape(Capsule())
                        }
                    }
                    
                    // Directions Button
                    if let mapsURL = resource.mapsURL {
                        Button {
                            openURL(mapsURL)
                        } label: {
                            HStack(spacing: 6) {
                                Image(systemName: "map.fill")
                                Text("Directions")
                            }
                            .font(.system(.subheadline, design: .default, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background(Theme.Colors.secondaryBackground)
                            .foregroundStyle(Theme.Colors.primaryText)
                            .clipShape(Capsule())
                        }
                    }
                    
                    // Bookmark Button
                    Button {
                        store.toggleResourceSaved(resourceId: resource.id)
                    } label: {
                        Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(width: 44, height: 44)
                            .background(Theme.Colors.secondaryBackground)
                            .foregroundStyle(isSaved ? Theme.Colors.accent : Theme.Colors.secondaryText)
                            .clipShape(Circle())
                    }
                    .accessibilityLabel(isSaved ? "Remove bookmark" : "Bookmark resource")
                    
                    // Share Link
                    ShareLink(item: "\(resource.name)\nAddress: \(resource.address)\nPhone: \(resource.phone)\nHours: \(resource.hours)") {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(width: 44, height: 44)
                            .background(Theme.Colors.secondaryBackground)
                            .foregroundStyle(Theme.Colors.primaryText)
                            .clipShape(Circle())
                    }
                    .accessibilityLabel("Share resource details")
                }
                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                
                // Overview
                VStack(alignment: .leading, spacing: 8) {
                    SectionHeader(title: "Overview")
                    
                    Text(resource.overview)
                        .font(.system(.body, design: .default))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .lineSpacing(4)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                }
                
                // Services Offered
                if !resource.servicesOffered.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        SectionHeader(title: "Services Offered")
                        
                        VStack(alignment: .leading, spacing: 10) {
                            ForEach(resource.servicesOffered, id: \.self) { service in
                                HStack(alignment: .top, spacing: 10) {
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 13, weight: .bold))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                        .padding(.top, 2)
                                    
                                    Text(service)
                                        .font(.system(.body, design: .default))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                }
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    }
                }
                
                // Eligibility
                VStack(alignment: .leading, spacing: 8) {
                    SectionHeader(title: "Eligibility")
                    
                    Text(resource.eligibility)
                        .font(.system(.body, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineSpacing(2)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                }
                
                // What to Bring
                if !resource.whatToBring.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        SectionHeader(title: "What to Bring")
                        
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(resource.whatToBring, id: \.self) { item in
                                HStack(alignment: .top, spacing: 10) {
                                    Image(systemName: "circle.fill")
                                        .font(.system(size: 6))
                                        .foregroundStyle(Theme.Colors.secondaryText)
                                        .padding(.top, 7)
                                    
                                    Text(item)
                                        .font(.system(.body, design: .default))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                }
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    }
                }
                
                // Location & Contact
                VStack(alignment: .leading, spacing: 8) {
                    SectionHeader(title: "Location & Contact")
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(resource.address)
                            .font(.system(.body, design: .default, weight: .medium))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        Text(resource.phone)
                            .font(.system(.body, design: .default))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                }
                .padding(.bottom, Theme.Spacing.section)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ResourceDetailView(
            resource: Resource(
                id: "res_preview",
                name: "Downtown Housing Navigator Center",
                category: .shelter,
                address: "410 S. Main Street, Suite 100",
                phone: "(555) 329-8400",
                hours: "Monday – Friday: 8:00 AM – 4:30 PM",
                overview: "Walk-in resource hub offering Coordinated Entry assessments, mail delivery service, day lockers, and housing search case managers.",
                servicesOffered: [
                    "Coordinated Entry assessments",
                    "Free day-lockers and phone charging stations",
                    "General delivery mail address for clients"
                ],
                eligibility: "Unsheltered individuals, families at imminent risk of displacement.",
                whatToBring: ["Photo ID if available (not required for first visit)"],
                isEmergencyHotline: false
            )
        )
        .environment(HousingStore())
    }
}
