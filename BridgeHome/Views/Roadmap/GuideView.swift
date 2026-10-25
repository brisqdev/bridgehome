import SwiftUI

struct GuideView: View {
    @Environment(HousingStore.self) private var store
    @State private var searchText: String = ""
    @State private var navigationPath = NavigationPath()
    
    init() {
        let args = ProcessInfo.processInfo.arguments
        if let artIndex = args.firstIndex(of: "-article"), artIndex + 1 < args.count {
            let articleId = args[artIndex + 1]
            var path = NavigationPath()
            path.append(articleId)
            _navigationPath = State(initialValue: path)
        }
    }
    
    private var filteredArticles: [Article] {
        if searchText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return store.articles
        } else {
            return store.articles.filter { article in
                article.title.localizedCaseInsensitiveContains(searchText) ||
                article.overview.localizedCaseInsensitiveContains(searchText) ||
                article.sections.contains(where: { section in
                    section.heading.localizedCaseInsensitiveContains(searchText) ||
                    section.body.localizedCaseInsensitiveContains(searchText)
                })
            }
        }
    }
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    
                    // Header Title (NO subtext!)
                    Text("Handbook")
                        .font(.system(.largeTitle, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .padding(.horizontal, Theme.Spacing.screenHorizontal)
                        .padding(.top, 4)
                    
                    // Simple Search Field
                    HStack(spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 15))
                            .foregroundStyle(Theme.Colors.secondaryText)
                        
                        TextField("Search 300+ articles...", text: $searchText)
                            .font(.system(.subheadline, design: .default))
                        
                        if !searchText.isEmpty {
                            Button {
                                searchText = ""
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.system(size: 14))
                                    .foregroundStyle(Theme.Colors.secondaryText)
                            }
                        }
                    }
                    .padding(.horizontal, 14)
                    .padding(.vertical, 10)
                    .background(Theme.Colors.cardBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    
                    // Clean Article List (Just article view, no pills, no state tags)
                    LazyVStack(spacing: 12) {
                        ForEach(filteredArticles) { article in
                            NavigationLink(value: article.id) {
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(alignment: .top) {
                                        Text(article.title)
                                            .font(.system(.headline, design: .default, weight: .bold))
                                            .foregroundStyle(Theme.Colors.primaryText)
                                            .multilineTextAlignment(.leading)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 12, weight: .semibold))
                                            .foregroundStyle(Theme.Colors.accent)
                                            .padding(.top, 4)
                                    }
                                    
                                    Text(article.overview)
                                        .font(.system(.subheadline, design: .default))
                                        .foregroundStyle(Theme.Colors.secondaryText)
                                        .lineLimit(2)
                                        .multilineTextAlignment(.leading)
                                        .lineSpacing(2)
                                }
                                .padding(16)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Theme.Colors.cardBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                    .padding(.bottom, Theme.Spacing.section)
                }
            }
            .background(Color(UIColor.systemBackground))
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: String.self) { articleId in
                if let article = store.articles.first(where: { $0.id == articleId }) {
                    ArticleDetailView(article: article)
                }
            }
        }
    }
}

#Preview {
    GuideView()
        .environment(HousingStore())
}
