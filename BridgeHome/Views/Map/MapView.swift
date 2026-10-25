import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    @Environment(HousingStore.self) private var store
    
    @State private var locationManager = LocationManager()
    @State private var discoveredResources: [Resource] = []
    @State private var isLoading: Bool = false
    @State private var searchText: String = ""
    @State private var selectedResourceId: String? = nil
    @State private var showingDetail: Bool = false
    
    @State private var cameraPosition: MapCameraPosition = .userLocation(
        fallback: .camera(
            MapCamera(
                centerCoordinate: LocationManager.defaultCoordinate,
                distance: 4000
            )
        )
    )
    
    private var activeCoordinate: CLLocationCoordinate2D {
        locationManager.userLocation ?? LocationManager.defaultCoordinate
    }
    
    private var selectedResource: Resource? {
        discoveredResources.first(where: { $0.id == selectedResourceId }) ?? discoveredResources.first
    }
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                
                // Full Screen Interactive Map
                Map(position: $cameraPosition) {
                    UserAnnotation()
                    
                    ForEach(discoveredResources) { resource in
                        Annotation(resource.name, coordinate: resource.coordinate) {
                            Button {
                                withAnimation(.spring(response: 0.3)) {
                                    selectedResourceId = resource.id
                                }
                            } label: {
                                ZStack {
                                    Circle()
                                        .fill(selectedResourceId == resource.id ? Theme.Colors.primaryText : Color(UIColor.systemBackground))
                                        .frame(width: 38, height: 38)
                                        .overlay(
                                            Circle()
                                                .stroke(selectedResourceId == resource.id ? Theme.Colors.primaryText : Theme.Colors.secondaryText.opacity(0.3), lineWidth: 1.5)
                                        )
                                        .shadow(color: .black.opacity(0.18), radius: 5, x: 0, y: 2)
                                    
                                    Image(systemName: resource.category.iconName)
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundStyle(selectedResourceId == resource.id ? Color(UIColor.systemBackground) : Theme.Colors.primaryText)
                                }
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .mapControls {
                    MapCompass()
                    MapScaleView()
                }
                
                // Floating Top Controls (Search Bar + Category Filters)
                floatingTopBar
                
                // Floating Bottom Selected Resource Card
                if let resource = selectedResource {
                    VStack {
                        Spacer()
                        MapFloatingResourceCard(
                            resource: resource,
                            onShowDetails: { showingDetail = true }
                        )
                        .padding(.horizontal, 16)
                        .padding(.bottom, 12)
                    }
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                }
                
                // Loading Overlay Indicator
                if isLoading {
                    VStack {
                        Spacer().frame(height: 120)
                        HStack(spacing: 8) {
                            ProgressView()
                                .tint(Theme.Colors.primaryText)
                            Text("Searching facilities...")
                                .font(.system(.caption, design: .default, weight: .semibold))
                                .foregroundStyle(Theme.Colors.primaryText)
                        }
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                        .background(Color(UIColor.systemBackground).opacity(0.95))
                        .clipShape(Capsule())
                        .shadow(color: .black.opacity(0.12), radius: 6, x: 0, y: 2)
                    }
                }
            }
            .navigationTitle("Map")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        locationManager.refreshLocation()
                        if let loc = locationManager.userLocation {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                cameraPosition = .camera(MapCamera(centerCoordinate: loc, distance: 4000))
                            }
                        } else {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                cameraPosition = .userLocation(fallback: .camera(MapCamera(centerCoordinate: LocationManager.defaultCoordinate, distance: 4000)))
                            }
                        }
                        Task { await fetchDynamicResources() }
                    } label: {
                        Image(systemName: "location.fill")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(Theme.Colors.primaryText)
                    }
                    .accessibilityLabel("Recenter on current location")
                }
            }
            .sheet(isPresented: $showingDetail) {
                if let resource = selectedResource {
                    NavigationStack {
                        ResourceDetailView(resource: resource)
                            .toolbar {
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Done") { showingDetail = false }
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Theme.Colors.primaryText)
                                }
                            }
                    }
                }
            }
            .task {
                locationManager.requestAuthorizationAndLocation()
                await fetchDynamicResources()
            }
            .onChange(of: store.activeMapCategory) { _, _ in
                Task { await fetchDynamicResources() }
            }
            .onChange(of: locationManager.userLocation?.latitude) { _, newLat in
                if let newLat = newLat, let newLon = locationManager.userLocation?.longitude {
                    let newCoord = CLLocationCoordinate2D(latitude: newLat, longitude: newLon)
                    withAnimation(.easeInOut(duration: 0.4)) {
                        cameraPosition = .camera(MapCamera(centerCoordinate: newCoord, distance: 4000))
                    }
                    Task { await fetchDynamicResources() }
                }
            }
        }
    }
    
    // MARK: - Floating Top Bar
    private var floatingTopBar: some View {
        VStack(spacing: 8) {
            
            // Search Input Field
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 15))
                    .foregroundStyle(Theme.Colors.secondaryText)
                
                TextField("Search shelters, pantries, clinics...", text: $searchText)
                    .font(.system(.subheadline, design: .default))
                    .onSubmit {
                        Task { await fetchDynamicResources() }
                    }
                
                if !searchText.isEmpty {
                    Button {
                        searchText = ""
                        Task { await fetchDynamicResources() }
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 14))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                }
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 10)
            .background(Color(UIColor.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .shadow(color: .black.opacity(0.12), radius: 6, x: 0, y: 2)
            .padding(.horizontal, 16)
            
            // Filter Pills
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(ResourceCategory.allCases) { category in
                        Button {
                            store.activeMapCategory = category
                        } label: {
                            HStack(spacing: 5) {
                                if category != .all {
                                    Image(systemName: category.iconName)
                                        .font(.system(size: 11, weight: .bold))
                                }
                                Text(category.rawValue)
                                    .font(.system(.subheadline, design: .default, weight: .semibold))
                            }
                            .padding(.horizontal, 14)
                            .padding(.vertical, 7)
                            .background(store.activeMapCategory == category ? Theme.Colors.primaryText : Color(UIColor.systemBackground))
                            .foregroundStyle(store.activeMapCategory == category ? Color(UIColor.systemBackground) : Theme.Colors.primaryText)
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(Theme.Colors.secondaryText.opacity(0.2), lineWidth: store.activeMapCategory == category ? 0 : 1)
                            )
                            .shadow(color: .black.opacity(0.06), radius: 3, x: 0, y: 1)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.top, 4)
    }
    
    // MARK: - Dynamic Fetch Action
    private func fetchDynamicResources() async {
        isLoading = true
        let results = await DynamicResourceService.fetchNearbyResources(
            around: activeCoordinate,
            category: store.activeMapCategory,
            customQuery: searchText
        )
        await MainActor.run {
            self.discoveredResources = results
            self.isLoading = false
            if self.selectedResourceId == nil || !results.contains(where: { $0.id == self.selectedResourceId }) {
                self.selectedResourceId = results.first?.id
            }
        }
    }
}

// MARK: - Map Floating Resource Card
private struct MapFloatingResourceCard: View {
    let resource: Resource
    let onShowDetails: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .top, spacing: 12) {
                ZStack {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(Theme.Colors.cardBackground)
                        .frame(width: 48, height: 48)
                    
                    Image(systemName: resource.category.iconName)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(Theme.Colors.primaryText)
                }
                
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text(resource.name)
                            .font(.system(.headline, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.primaryText)
                            .lineLimit(1)
                        
                        Spacer()
                        
                        Text(String(format: "%.1f mi", resource.distanceMiles))
                            .font(.system(.footnote, design: .default, weight: .bold))
                            .foregroundStyle(Theme.Colors.secondaryText)
                    }
                    
                    Text(resource.address)
                        .font(.system(.subheadline, design: .default))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineLimit(1)
                    
                    Text(resource.hours)
                        .font(.system(.caption, design: .default, weight: .medium))
                        .foregroundStyle(Theme.Colors.secondaryText)
                        .lineLimit(1)
                }
            }
            
            HStack(spacing: 10) {
                if let phoneURL = resource.phoneURL {
                    Link(destination: phoneURL) {
                        HStack(spacing: 5) {
                            Image(systemName: "phone.fill")
                                .font(.system(size: 12))
                            Text("Call")
                                .font(.system(.subheadline, design: .default, weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Theme.Colors.primaryText)
                        .foregroundStyle(Color(UIColor.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                }
                
                if let mapsURL = resource.mapsURL {
                    Link(destination: mapsURL) {
                        HStack(spacing: 5) {
                            Image(systemName: "arrow.triangle.turn.up.right.diamond.fill")
                                .font(.system(size: 12))
                            Text("Directions")
                                .font(.system(.subheadline, design: .default, weight: .semibold))
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Theme.Colors.cardBackground)
                        .foregroundStyle(Theme.Colors.primaryText)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                }
                
                Button(action: onShowDetails) {
                    Text("Details")
                        .font(.system(.subheadline, design: .default, weight: .semibold))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Theme.Colors.cardBackground)
                        .foregroundStyle(Theme.Colors.primaryText)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                }
            }
        }
        .padding(16)
        .background(Color(UIColor.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 4)
    }
}
