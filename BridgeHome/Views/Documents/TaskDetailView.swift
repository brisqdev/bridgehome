import SwiftUI

struct TaskDetailView: View {
    @Environment(HousingStore.self) private var store
    let stepId: String
    
    @State private var notesText: String = ""
    @FocusState private var isNotesFocused: Bool
    
    private var step: BinderStep? {
        store.binderSteps.first(where: { $0.id == stepId })
    }
    
    var body: some View {
        Group {
            if let step {
                ScrollView {
                    VStack(alignment: .leading, spacing: Theme.Spacing.section) {
                        
                        // Header Section
                        VStack(alignment: .leading, spacing: 8) {
                            Text("PHASE \(step.phaseNumber) • \(step.phaseName.uppercased())")
                                .font(.system(size: 11, weight: .bold))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .tracking(0.8)
                            
                            Text(step.title)
                                .font(.system(.title2, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.primaryText)
                            
                            Text(step.detailedGuide)
                                .font(.system(.body, design: .default))
                                .foregroundStyle(Theme.Colors.secondaryText)
                                .lineSpacing(3)
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                        
                        // Progress Pill
                        HStack {
                            Text("\(step.completedSubstepsCount) of \(step.substeps.count) tasks completed")
                                .font(.system(.caption, design: .default, weight: .semibold))
                                .foregroundStyle(Theme.Colors.primaryText)
                            
                            Spacer()
                            
                            if step.isFullyCompleted {
                                Label("Phase Complete", systemImage: "checkmark.circle.fill")
                                    .font(.system(.caption, design: .default, weight: .bold))
                                    .foregroundStyle(Theme.Colors.primaryText)
                            }
                        }
                        .padding(.horizontal, 14)
                        .padding(.vertical, 10)
                        .background(Theme.Colors.cardBackground)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        
                        // Action Checklist
                        VStack(alignment: .leading, spacing: 14) {
                            Text("Action Checklist")
                                .font(.system(.headline, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.primaryText)
                                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                            
                            VStack(spacing: 0) {
                                ForEach(step.substeps) { substep in
                                    SubstepRow(
                                        substep: substep,
                                        onToggle: {
                                            store.toggleSubstepCompletion(stepId: step.id, substepId: substep.id)
                                        }
                                    )
                                    
                                    if substep.id != step.substeps.last?.id {
                                        Divider()
                                            .padding(.leading, 56)
                                            .padding(.trailing, 16)
                                    }
                                }
                            }
                            .background(Theme.Colors.cardBackground)
                            .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
                            .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        }
                        
                        // Personal Notes
                        VStack(alignment: .leading, spacing: 8) {
                            Text("My Notes & Confirmation Numbers")
                                .font(.system(.headline, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.primaryText)
                            
                            TextEditor(text: $notesText)
                                .focused($isNotesFocused)
                                .frame(minHeight: 100)
                                .padding(10)
                                .background(Theme.Colors.cardBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                                        .stroke(Theme.Colors.secondaryText.opacity(0.2), lineWidth: 1)
                                )
                                .onChange(of: notesText) { _, newNotes in
                                    store.updateStepNotes(stepId: step.id, notes: newNotes)
                                }
                        }
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.bottom, Theme.Spacing.section)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    notesText = step.personalNotes
                }
            } else {
                Text("Task not found")
                    .foregroundStyle(Theme.Colors.secondaryText)
            }
        }
    }
}

// MARK: - Substep Row
private struct SubstepRow: View {
    let substep: BinderSubstep
    let onToggle: () -> Void
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Button(action: onToggle) {
                ZStack {
                    Circle()
                        .strokeBorder(substep.isCompleted ? Theme.Colors.primaryText : Theme.Colors.secondaryText.opacity(0.4), lineWidth: 2)
                        .frame(width: 24, height: 24)
                    
                    if substep.isCompleted {
                        Circle()
                            .fill(Theme.Colors.primaryText)
                            .frame(width: 24, height: 24)
                        
                        Image(systemName: "checkmark")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundStyle(Color(UIColor.systemBackground))
                    }
                }
                .frame(width: 44, height: 44)
                .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            .accessibilityLabel(substep.isCompleted ? "Mark incomplete: \(substep.title)" : "Mark completed: \(substep.title)")
            
            VStack(alignment: .leading, spacing: 4) {
                Text(substep.title)
                    .font(.system(.body, design: .default, weight: .semibold))
                    .foregroundStyle(Theme.Colors.primaryText)
                    .strikethrough(substep.isCompleted, color: Theme.Colors.secondaryText)
                
                Text(substep.detail)
                    .font(.system(.subheadline, design: .default))
                    .foregroundStyle(Theme.Colors.secondaryText)
                    .lineSpacing(2)
                
                if let urlString = substep.portalURL, let url = URL(string: urlString) {
                    Link(destination: url) {
                        HStack(spacing: 4) {
                            Text(url.scheme == "tel" ? "Call Now" : "Apply / Visit Portal")
                            Image(systemName: "arrow.up.right")
                        }
                        .font(.system(.caption, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .padding(.top, 4)
                    }
                }
            }
            .padding(.top, 12)
            .padding(.bottom, 12)
            .padding(.trailing, 16)
        }
        .padding(.leading, 8)
    }
}
