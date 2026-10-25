import SwiftUI

struct StepDetailView: View {
    @Environment(HousingStore.self) private var store
    let stepId: String
    
    @State private var notesText: String = ""
    @State private var isNotesLoaded: Bool = false
    
    private var step: GuideStep? {
        store.guideSteps.first(where: { $0.id == stepId })
    }
    
    var body: some View {
        Group {
            if let step {
                ScrollView {
                    VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                        
                        // Header
                        VStack(alignment: .leading, spacing: 8) {
                            Text(step.stage.rawValue.uppercased())
                                .font(.system(.caption, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.accent)
                                .tracking(0.8)
                            
                            Text(step.title)
                                .font(.system(.title, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.primaryText)
                            
                            Text(step.shortSummary)
                                .font(.system(.body, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .lineSpacing(3)
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                        
                        // In-depth Detail
                        VStack(alignment: .leading, spacing: 12) {
                            Text(step.detail)
                                .font(.system(.body, design: .default))
                                .foregroundStyle(Theme.Colors.primaryText)
                                .lineSpacing(4)
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        
                        // Checklist Section
                        if !step.actionChecklist.isEmpty {
                            VStack(alignment: .leading, spacing: 14) {
                                SectionHeader(title: "Recommended Actions")
                                
                                VStack(spacing: 0) {
                                    ForEach(step.actionChecklist, id: \.self) { item in
                                        let isItemDone = step.completedChecklistItems.contains(item)
                                        
                                        Button {
                                            store.toggleChecklistItem(stepId: step.id, item: item)
                                        } label: {
                                            HStack(alignment: .top, spacing: 12) {
                                                Image(systemName: isItemDone ? "checkmark.circle.fill" : "circle")
                                                    .font(.system(size: 20))
                                                    .foregroundStyle(isItemDone ? Theme.Colors.accent : Theme.Colors.secondaryText.opacity(0.5))
                                                    .padding(.top, 1)
                                                
                                                Text(item)
                                                    .font(.system(.body, design: .default))
                                                    .foregroundStyle(isItemDone ? Theme.Colors.secondaryText : Theme.Colors.primaryText)
                                                    .strikethrough(isItemDone, color: Theme.Colors.secondaryText)
                                                    .multilineTextAlignment(.leading)
                                                    .lineSpacing(3)
                                                
                                                Spacer(minLength: 0)
                                            }
                                            .padding(.vertical, 10)
                                            .contentShape(Rectangle())
                                        }
                                        .buttonStyle(.plain)
                                        .accessibilityLabel(isItemDone ? "Mark incomplete: \(item)" : "Mark completed: \(item)")
                                        
                                        if item != step.actionChecklist.last {
                                            Divider()
                                                .padding(.leading, 32)
                                        }
                                    }
                                }
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                            }
                        }
                        
                        // Rights & Pitfalls Alert
                        if let rights = step.rightsAndPitfalls {
                            CalloutBox(
                                icon: "shield.lefthalf.filled",
                                title: "Rights & Guidance",
                                message: rights
                            )
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                        
                        // Personal Notes
                        VStack(alignment: .leading, spacing: 10) {
                            SectionHeader(
                                title: "Personal Notes",
                                subtitle: "Private to your device. Save appointment dates or caseworker notes."
                            )
                            
                            TextField("Add notes here...", text: $notesText, axis: .vertical)
                                .font(.system(.body, design: .default))
                                .padding(14)
                                .background(Theme.Colors.secondaryBackground)
                                .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.standard, style: .continuous))
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                                .onChange(of: notesText) { _, newValue in
                                    store.updateStepNotes(stepId: step.id, notes: newValue)
                                }
                        }
                        
                        // Actions (Mark Complete, Set Daily Focus)
                        VStack(spacing: 12) {
                            Button {
                                store.toggleStepCompletion(stepId: step.id)
                            } label: {
                                HStack(spacing: 8) {
                                    Image(systemName: step.isCompleted ? "arrow.uturn.backward.circle" : "checkmark.circle.fill")
                                    Text(step.isCompleted ? "Mark as Incomplete" : "Mark Step as Completed")
                                }
                                .font(.system(.body, design: .default, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 14)
                                .background(step.isCompleted ? Theme.Colors.secondaryBackground : Theme.Colors.accent)
                                .foregroundStyle(step.isCompleted ? Theme.Colors.primaryText : .white)
                                .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.standard, style: .continuous))
                            }
                            
                            if store.dailyFocusStepId != step.id {
                                Button {
                                    store.setDailyFocus(stepId: step.id)
                                } label: {
                                    Text("Set as Today's Focus")
                                        .font(.system(.subheadline, design: .default, weight: .medium))
                                        .foregroundStyle(Theme.Colors.accent)
                                }
                                .padding(.top, 4)
                            }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.bottom, Theme.Spacing.section)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    if !isNotesLoaded {
                        notesText = step.personalNotes
                        isNotesLoaded = true
                    }
                }
            } else {
                Text("Step not found")
                    .foregroundStyle(Theme.Colors.secondaryText)
            }
        }
    }
}

#Preview {
    NavigationStack {
        StepDetailView(stepId: "step_safe_tonight")
            .environment(HousingStore())
    }
}
