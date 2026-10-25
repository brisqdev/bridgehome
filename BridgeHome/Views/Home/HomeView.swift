import SwiftUI

struct HomeView: View {
    @Environment(HousingStore.self) private var store
    var onNavigateToTab: ((MainTabView.Tab) -> Void)? = nil
    
    private var activeBinderStep: BinderStep? {
        store.binderSteps.first(where: { step in
            step.substeps.contains(where: { !$0.isCompleted })
        }) ?? store.binderSteps.first
    }
    
    private var nextUpcomingSubstep: BinderSubstep? {
        activeBinderStep?.substeps.first(where: { !$0.isCompleted })
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Header Title (NO subtext!)
                    Text("BridgeHome")
                        .font(.system(.largeTitle, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                    
                    // 1. Compact Crisis & Helpline Bar
                    emergencyBar
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // 2. Primary Action Cards (Uber "Get a ride / Order food" style)
                    heroActionCards
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // 3. Quick Services Tiles (Single word, NO explanations!)
                    quickServicesRow
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // 4. Housing Binder Progress Dashboard Card
                    binderProgressCard
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                }
                .padding(.bottom, 28)
            }
            .background(Color(UIColor.systemBackground))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    // MARK: - 1. Emergency Bar
    private var emergencyBar: some View {
        HStack(spacing: 12) {
            Image(systemName: "phone.circle.fill")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(Theme.Colors.primaryText)
            
            Text("24/7 Helpline")
                .font(.system(.subheadline, design: .default, weight: .bold))
                .foregroundStyle(Theme.Colors.primaryText)
            
            Spacer()
            
            Link(destination: URL(string: "tel:211")!) {
                HStack(spacing: 4) {
                    Image(systemName: "phone.fill")
                        .font(.system(size: 11))
                    Text("Call 211")
                        .font(.system(.subheadline, design: .default, weight: .bold))
                }
                .padding(.horizontal, 14)
                .padding(.vertical, 8)
                .background(Theme.Colors.primaryText)
                .foregroundStyle(Color(UIColor.systemBackground))
                .clipShape(Capsule())
            }
            
            Link(destination: URL(string: "tel:988")!) {
                Text("988")
                    .font(.system(.subheadline, design: .default, weight: .semibold))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(Theme.Colors.cardBackground)
                    .foregroundStyle(Theme.Colors.primaryText)
                    .clipShape(Capsule())
            }
        }
        .padding(14)
        .background(Theme.Colors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
    }
    
    // MARK: - 2. Hero Action Cards (Find Shelter & Find Food)
    private var heroActionCards: some View {
        HStack(spacing: 12) {
            // Find Shelter Card
            Button {
                store.activeMapCategory = .shelter
                onNavigateToTab?(.map)
            } label: {
                VStack(alignment: .leading, spacing: 14) {
                    HStack {
                        Image(systemName: "bed.double.fill")
                            .font(.system(size: 26, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.right")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                    
                    Text("Find Shelter")
                        .font(.system(.headline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(UIColor.secondarySystemBackground).opacity(0.85))
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
            .buttonStyle(.plain)
            
            // Find Food Card
            Button {
                store.activeMapCategory = .meals
                onNavigateToTab?(.map)
            } label: {
                VStack(alignment: .leading, spacing: 14) {
                    HStack {
                        Image(systemName: "fork.knife")
                            .font(.system(size: 26, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.right")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                    
                    Text("Find Meals")
                        .font(.system(.headline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(UIColor.secondarySystemBackground).opacity(0.85))
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
            .buttonStyle(.plain)
        }
    }
    
    // MARK: - 3. Quick Services Row (Just Icon + Label, NO explanations)
    private var quickServicesRow: some View {
        HStack(spacing: 10) {
            serviceTile(title: "Legal", icon: "scale.3d", category: .legal)
            serviceTile(title: "ID Docs", icon: "person.text.rectangle.fill", category: .documents)
            serviceTile(title: "Clinics", icon: "cross.fill", category: .healthcare)
            serviceTile(title: "All Hubs", icon: "map.fill", category: .all)
        }
    }
    
    private func serviceTile(title: String, icon: String, category: ResourceCategory) -> some View {
        Button {
            store.activeMapCategory = category
            onNavigateToTab?(.map)
        } label: {
            VStack(spacing: 8) {
                ZStack {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(Theme.Colors.cardBackground)
                        .frame(width: 46, height: 46)
                    
                    Image(systemName: icon)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(Theme.Colors.primaryText)
                }
                
                Text(title)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundStyle(Theme.Colors.primaryText)
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background(Color(UIColor.secondarySystemBackground).opacity(0.55))
            .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
        }
        .buttonStyle(.plain)
    }
    
    // MARK: - 4. Housing Binder Progress Dashboard Card
    private var binderProgressCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Housing Binder")
                        .font(.system(.headline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                    
                    Text("\(store.completedSubstepsCount) of \(store.totalSubstepsCount) tasks completed")
                        .font(.system(.footnote, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                }
                
                Spacer()
                
                Button {
                    onNavigateToTab?(.binder)
                } label: {
                    Text("Open →")
                        .font(.system(.subheadline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                }
            }
            
            // Progress Bar
            ProgressView(value: Double(store.completedSubstepsCount), total: max(1.0, Double(store.totalSubstepsCount)))
                .tint(Theme.Colors.primaryText)
            
            if let nextTask = nextUpcomingSubstep {
                HStack(spacing: 8) {
                    Image(systemName: "arrow.forward.circle.fill")
                        .font(.system(size: 14))
                        .foregroundStyle(Theme.Colors.primaryText)
                    
                    Text("Next: \(nextTask.title)")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineLimit(1)
                }
                .padding(.top, 2)
            }
        }
        .padding(16)
        .background(Theme.Colors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

#Preview {
    HomeView()
        .environment(HousingStore())
}
