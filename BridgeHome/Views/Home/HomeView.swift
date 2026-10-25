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
    
    private var evictionArticle: Article? {
        store.articles.first(where: { $0.id == "art_eviction_court_process" || $0.id.hasPrefix("eviction_") }) ?? store.articles.first
    }
    
    private var idWaiverArticle: Article? {
        store.articles.first(where: { $0.id == "art_vital_documents_vault" || $0.id.hasPrefix("vital_") })
    }
    
    private var safeParkingArticle: Article? {
        store.articles.first(where: { $0.id == "art_safe_parking_programs" || $0.id.hasPrefix("camping_") })
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
                    
                    // 1. Emergency Helpline Buttons (211 & 988)
                    emergencyButtons
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // 2. Primary Hero Cards (Shelter & Food -> Map)
                    heroActionCards
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // 3. Housing Binder Progress Dashboard Card
                    binderProgressCard
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // 4. Essential Survival & Rights Guides (Drills to Handbook)
                    essentialGuidesSection
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                }
                .padding(.bottom, 28)
            }
            .background(Color(UIColor.systemBackground))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    // MARK: - 1. Emergency Buttons (211 & 988)
    private var emergencyButtons: some View {
        HStack(spacing: 12) {
            Link(destination: URL(string: "tel:211")!) {
                HStack(spacing: 10) {
                    Image(systemName: "phone.fill")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(Theme.Colors.accent)
                    
                    Text("Call 211")
                        .font(.system(.headline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .background(Theme.Colors.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
            }
            .buttonStyle(.plain)
            
            Link(destination: URL(string: "tel:988")!) {
                HStack(spacing: 10) {
                    Image(systemName: "cross.fill")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(Theme.Colors.accent)
                    
                    Text("Call 988")
                        .font(.system(.headline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .background(Theme.Colors.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
            }
            .buttonStyle(.plain)
        }
    }
    
    // MARK: - 2. Hero Action Cards (Find Shelter & Find Meals -> Map)
    private var heroActionCards: some View {
        HStack(spacing: 12) {
            // Find Shelter Card (Uber-style 3D Card)
            Button {
                store.activeMapCategory = .shelter
                onNavigateToTab?(.map)
            } label: {
                VStack(alignment: .leading, spacing: 12) {
                    // 3D Isometric Shelter Asset
                    Image("3DShelter")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 76)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 2)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Find Shelter")
                            .font(.system(.headline, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        // Uber-style action arrow circle
                        ZStack {
                            Circle()
                                .fill(Theme.Colors.primaryText)
                                .frame(width: 28, height: 28)
                            
                            Image(systemName: "arrow.right")
                                .font(.system(size: 11, weight: .bold))
                                .foregroundStyle(Color(UIColor.systemBackground))
                        }
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Theme.Colors.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
            .buttonStyle(.plain)
            
            // Find Meals Card (Uber Eats-style 3D Card)
            Button {
                store.activeMapCategory = .meals
                onNavigateToTab?(.map)
            } label: {
                VStack(alignment: .leading, spacing: 12) {
                    // 3D Isometric Meals Asset
                    Image("3DMeals")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 76)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 2)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Find Meals")
                            .font(.system(.headline, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                        
                        // Uber-style action arrow circle
                        ZStack {
                            Circle()
                                .fill(Theme.Colors.primaryText)
                                .frame(width: 28, height: 28)
                            
                            Image(systemName: "arrow.right")
                                .font(.system(size: 11, weight: .bold))
                                .foregroundStyle(Color(UIColor.systemBackground))
                        }
                    }
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Theme.Colors.cardBackground)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
            .buttonStyle(.plain)
        }
    }
    
    // MARK: - 3. Housing Binder Progress Dashboard Card
    private var binderProgressCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Housing Binder")
                    .font(.system(.headline, design: .default, weight: .bold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Spacer()
                
                Button {
                    onNavigateToTab?(.binder)
                } label: {
                    Text("All Tasks →")
                        .font(.system(.subheadline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.accent)
                }
            }
            
            // Progress Bar
            ProgressView(value: Double(store.completedSubstepsCount), total: max(1.0, Double(store.totalSubstepsCount)))
                .tint(Theme.Colors.accent)
            
            // Active Step (Drill directly into Task Detail!)
            if let activeStep = activeBinderStep, let nextTask = nextUpcomingSubstep {
                NavigationLink(destination: TaskDetailView(stepId: activeStep.id)) {
                    HStack(spacing: 12) {
                        Image(systemName: "arrow.forward")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundStyle(Theme.Colors.accent)
                        
                        Text(nextTask.title)
                            .font(.system(.subheadline, design: .default, weight: .semibold))
                            .foregroundStyle(Theme.Colors.primaryText)
                            .lineLimit(1)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                    .padding(14)
                    .background(Color(UIColor.tertiarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                }
                .buttonStyle(.plain)
            }
        }
        .padding(16)
        .background(Theme.Colors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
    
    // MARK: - 4. Essential Survival & Rights Guides (Drills to Handbook Articles)
    private var essentialGuidesSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Essential Guides")
                    .font(.system(.headline, design: .default, weight: .bold))
                    .foregroundStyle(Theme.Colors.primaryText)
                
                Spacer()
                
                Button {
                    onNavigateToTab?(.guide)
                } label: {
                    Text("Handbook →")
                        .font(.system(.subheadline, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.accent)
                }
            }
            
            VStack(spacing: 8) {
                if let eviction = evictionArticle {
                    NavigationLink(destination: ArticleDetailView(article: eviction)) {
                        guideRow(title: eviction.title, icon: "scale.3d")
                    }
                    .buttonStyle(.plain)
                }
                
                if let idWaiver = idWaiverArticle {
                    NavigationLink(destination: ArticleDetailView(article: idWaiver)) {
                        guideRow(title: idWaiver.title, icon: "doc.text.fill")
                    }
                    .buttonStyle(.plain)
                }
                
                if let safeParking = safeParkingArticle {
                    NavigationLink(destination: ArticleDetailView(article: safeParking)) {
                        guideRow(title: safeParking.title, icon: "car.fill")
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
    
    private func guideRow(title: String, icon: String) -> some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(Theme.Colors.accent)
                .frame(width: 22)
            
            Text(title)
                .font(.system(.subheadline, design: .default, weight: .semibold))
                .foregroundStyle(Theme.Colors.primaryText)
                .lineLimit(1)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 12, weight: .semibold))
                .foregroundStyle(Theme.Colors.secondaryText)
        }
        .padding(16)
        .background(Theme.Colors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
    }
}

#Preview {
    HomeView()
        .environment(HousingStore())
}
