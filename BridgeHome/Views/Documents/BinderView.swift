import SwiftUI

struct BinderView: View {
    @Environment(HousingStore.self) private var store
    @State private var navigationPath = NavigationPath()
    
    init() {
        let args = ProcessInfo.processInfo.arguments
        if let stepIndex = args.firstIndex(of: "-step"), stepIndex + 1 < args.count {
            let stepId = args[stepIndex + 1]
            var path = NavigationPath()
            path.append(stepId)
            _navigationPath = State(initialValue: path)
        }
    }
    
    private var totalTasks: Int {
        store.totalSubstepsCount
    }
    
    private var completedTasks: Int {
        store.completedSubstepsCount
    }
    
    private var progressFraction: Double {
        guard totalTasks > 0 else { return 0 }
        return Double(completedTasks) / Double(totalTasks)
    }
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                    
                    // Header Title (NO subtext!)
                    Text("Binder")
                        .font(.system(.largeTitle, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                    
                    // Overall Roadmap Progress Card
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .center) {
                            Text("Roadmap Progress")
                                .font(.system(.subheadline, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.primaryText)
                            
                            Spacer()
                            
                            Text("\(completedTasks) of \(totalTasks) completed")
                                .font(.system(.footnote, design: .default, weight: .semibold))
                                .foregroundStyle(Theme.Colors.secondaryText)
                        }
                        
                        GeometryReader { geo in
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Theme.Colors.secondaryText.opacity(0.15))
                                    .frame(height: 8)
                                
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Theme.Colors.accent)
                                    .frame(width: geo.size.width * CGFloat(progressFraction), height: 8)
                                    .animation(.spring(response: 0.4), value: progressFraction)
                            }
                        }
                        .frame(height: 8)
                    }
                    .padding(Theme.Spacing.element)
                    .background(Theme.Colors.cardBackground)
                    .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // Action Tasks / Milestones List
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Action Phases")
                            .font(.system(.title3, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        
                        VStack(spacing: 8) {
                            ForEach(store.binderSteps) { step in
                                NavigationLink(value: step.id) {
                                    HStack(spacing: 14) {
                                        // Clean Numeral (NO circle background, NO AI boxes!)
                                        if step.isFullyCompleted {
                                            Image(systemName: "checkmark")
                                                .font(.system(size: 16, weight: .bold))
                                                .foregroundStyle(Theme.Colors.accent)
                                                .frame(width: 28)
                                        } else {
                                            Text(String(format: "%02d", step.phaseNumber))
                                                .font(.system(size: 17, weight: .bold, design: .rounded))
                                                .foregroundStyle(Theme.Colors.accent)
                                                .frame(width: 28)
                                        }
                                        
                                        // Clean Title (NO crowded subtext!)
                                        Text(step.title)
                                            .font(.system(.body, design: .default, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.primaryText)
                                            .lineLimit(1)
                                        
                                        Spacer()
                                        
                                        Text("\(step.completedSubstepsCount)/\(step.substeps.count)")
                                            .font(.system(.subheadline, design: .default, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.secondaryText)
                                        
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 12, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.secondaryText)
                                    }
                                    .padding(16)
                                    .background(Theme.Colors.cardBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
                                }
                                .buttonStyle(.plain)
                                .accessibilityLabel("\(step.title), \(step.completedSubstepsCount) of \(step.substeps.count) completed")
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    }
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .navigationDestination(for: String.self) { stepId in
                TaskDetailView(stepId: stepId)
            }
        }
    }
}

#Preview {
    BinderView()
        .environment(HousingStore())
}
