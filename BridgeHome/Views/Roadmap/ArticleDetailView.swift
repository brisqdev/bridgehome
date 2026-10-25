import SwiftUI

struct ArticleDetailView: View {
    @Environment(HousingStore.self) private var store
    let article: Article
    
    private var isBookmarked: Bool {
        store.isArticleBookmarked(article.id)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // Header Meta
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(article.category.rawValue.uppercased())
                            .font(.system(size: 11, weight: .bold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .tracking(0.6)
                        
                        if let stateTag = article.stateTag {
                            Text("•")
                                .foregroundStyle(Theme.Colors.secondaryText)
                            Text(stateTag)
                                .font(.system(size: 11, weight: .semibold))
                                .foregroundStyle(Theme.Colors.secondaryText)
                        }
                        
                        Spacer()
                        
                        Text("\(article.readTimeMinutes) min read")
                            .font(.system(.caption, design: .default, weight: .medium))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                    
                    Text(article.title)
                        .font(.system(.title2, design: .default, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                        .lineSpacing(2)
                    
                    Text(article.overview)
                        .font(.system(.body, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineSpacing(3)
                }
                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                .padding(.top, 4)
                
                // Key Takeaways Box
                if !article.keyTakeaways.isEmpty {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("KEY TAKEAWAYS")
                            .font(.system(size: 11, weight: .bold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                            .tracking(0.6)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(article.keyTakeaways, id: \.self) { takeaway in
                                HStack(alignment: .top, spacing: 10) {
                                    Image(systemName: "checkmark.circle.fill")
                                        .font(.system(size: 15))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                        .padding(.top, 1)
                                    Text(takeaway)
                                        .font(.system(.subheadline, design: .default, weight: .medium))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                }
                            }
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Theme.Colors.cardBackground)
                    .clipShape(RoundedRectangle(cornerRadius: Theme.Radius.card, style: .continuous))
                    .padding(.horizontal, Theme.Spacing.screenHorizontal)
                }
                
                // Article Content Sections
                VStack(alignment: .leading, spacing: 24) {
                    ForEach(article.sections) { section in
                        VStack(alignment: .leading, spacing: 8) {
                            Text(section.heading)
                                .font(.system(.headline, design: .default, weight: .bold))
                                .foregroundStyle(Theme.Colors.primaryText)
                            
                            Text(section.body)
                                .font(.system(.body, design: .default))
                                .foregroundStyle(Theme.Colors.primaryText)
                                .lineSpacing(3)
                            
                            if !section.bulletPoints.isEmpty {
                                VStack(alignment: .leading, spacing: 8) {
                                    ForEach(section.bulletPoints, id: \.self) { point in
                                        HStack(alignment: .top, spacing: 8) {
                                            Text("•")
                                                .font(.system(.body, design: .default, weight: .bold))
                                                .foregroundStyle(Theme.Colors.primaryText)
                                            Text(point)
                                                .font(.system(.body, design: .default))
                                                .foregroundStyle(Theme.Colors.primaryText)
                                                .lineSpacing(2)
                                        }
                                    }
                                }
                                .padding(.top, 4)
                            }
                            
                            if let callout = section.callout {
                                HStack(alignment: .top, spacing: 10) {
                                    Image(systemName: "exclamationmark.circle.fill")
                                        .font(.system(size: 16))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                        .padding(.top, 2)
                                    Text(callout)
                                        .font(.system(.subheadline, design: .default, weight: .medium))
                                        .foregroundStyle(Theme.Colors.primaryText)
                                        .lineSpacing(2)
                                }
                                .padding(14)
                                .background(Theme.Colors.cardBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                .padding(.top, 6)
                            }
                        }
                    }
                }
                .padding(.horizontal, Theme.Spacing.screenHorizontal)
                .padding(.bottom, Theme.Spacing.section)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    store.toggleArticleBookmark(articleId: article.id)
                } label: {
                    Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                        .font(.system(size: 16))
                        .foregroundStyle(isBookmarked ? Theme.Colors.primaryText : Theme.Colors.secondaryText)
                }
                .accessibilityLabel(isBookmarked ? "Remove bookmark" : "Bookmark article")
            }
        }
    }
}

#Preview {
    NavigationStack {
        ArticleDetailView(
            article: Article(
                id: "sample_article",
                title: "State-by-State Tenant Protections & Eviction Notice Laws",
                category: .legalAndStateLaws,
                stateTag: "CA, NY, TX, FL",
                readTimeMinutes: 5,
                overview: "Understanding eviction notice windows, source-of-income laws, and rent gouging caps across major US states.",
                sections: [
                    ArticleSection(
                        heading: "Notice Periods Before Court Filings",
                        body: "Landlords cannot evict you without court authorization.",
                        bulletPoints: ["California: 3-Day Notice", "New York: 14-Day Notice"]
                    )
                ],
                keyTakeaways: ["Self-help lockouts are illegal nationwide"]
            )
        )
        .environment(HousingStore())
    }
}
