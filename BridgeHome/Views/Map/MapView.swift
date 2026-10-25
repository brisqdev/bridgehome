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
    @State private var lastQueriedCoordinate: CLLocationCoordinate2D? = nil
    @State private var isRegionSupported: Bool = true
    
    @State private var cameraPosition: MapCameraPosition = .camera(
        MapCamera(
            centerCoordinate: LocationManager.defaultCoordinate,
            distance: 12000
        )
    )
    
    private var activeCoordinate: CLLocationCoordinate2D {
        lastQueriedCoordinate ?? locationManager.userLocation ?? LocationManager.defaultCoordinate
    }
    
    private var selectedResource: Resource? {
        discoveredResources.first(where: { $0.id == selectedResourceId }) ?? discoveredResources.first
    }
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                
                // Full Screen Interactive Map with Dynamic Pan/Zoom Region Detection
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
                                        .fill(selectedResourceId == resource.id ? Theme.Colors.accent : Color(UIColor.systemBackground))
                                        .frame(width: 36, height: 36)
                                        .overlay(
                                            Circle()
                                                .stroke(selectedResourceId == resource.id ? Theme.Colors.accent : Color(UIColor.separator), lineWidth: 1.5)
                                        )
                                        .shadow(color: .black.opacity(0.18), radius: 4, x: 0, y: 2)
                                    
                                    Image(systemName: resource.category.iconName)
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundStyle(selectedResourceId == resource.id ? Color.white : Theme.Colors.accent)
                                }
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .onMapCameraChange(frequency: .onEnd) { context in
                    let newCenter = context.region.center
                    let isSupported = SupportedRegion.contains(coordinate: newCenter)
                    let prevSupported = isRegionSupported
                    let prev = activeCoordinate
                    let locPrev = CLLocation(latitude: prev.latitude, longitude: prev.longitude)
                    let locNew = CLLocation(latitude: newCenter.latitude, longitude: newCenter.longitude)
                    
                    // If user moved view by more than 800m or crossed coverage boundary, auto-update
                    if locPrev.distance(from: locNew) > 800 || isSupported != prevSupported || (discoveredResources.isEmpty && isSupported) {
                        lastQueriedCoordinate = newCenter
                        Task {
                            await fetchDynamicResources(around: newCenter)
                        }
                    }
                }
                .mapControls {
                    MapCompass()
                    MapScaleView()
                }
                
                // Floating Top Controls (Google Maps-Style Search Bar & Filter Chips)
                floatingTopBar
                
                // Floating Bottom Indicator / Selected Resource Card
                if !isRegionSupported {
                    VStack {
                        Spacer()
                        VStack(spacing: 12) {
                            HStack(spacing: 10) {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundStyle(Theme.Colors.accent)
                                
                                Text("This location isn't supported yet")
                                    .font(.system(.headline, design: .default, weight: .bold))
                                    .foregroundStyle(Theme.Colors.primaryText)
                            }
                            
                            Button {
                                let center = SupportedRegion.center
                                lastQueriedCoordinate = center
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    cameraPosition = .camera(MapCamera(centerCoordinate: center, distance: 12000))
                                }
                                Task {
                                    await fetchDynamicResources(around: center)
                                }
                            } label: {
                                Text("View Bergen & Passaic, NJ")
                                    .font(.system(.subheadline, design: .default, weight: .bold))
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .background(Theme.Colors.accent)
                                    .foregroundStyle(Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            }
                        }
                        .padding(18)
                        .background(Color(UIColor.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                        .shadow(color: .black.opacity(0.18), radius: 12, x: 0, y: 4)
                        .padding(.horizontal, 16)
                        .padding(.bottom, 12)
                    }
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                } else if let resource = selectedResource {
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
                            Text("Updating region...")
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
                        let loc = locationManager.userLocation ?? LocationManager.defaultCoordinate
                        lastQueriedCoordinate = loc
                        withAnimation(.easeInOut(duration: 0.3)) {
                            cameraPosition = .camera(MapCamera(centerCoordinate: loc, distance: 12000))
                        }
                        Task { await fetchDynamicResources(around: loc) }
                    } label: {
                        Image(systemName: "location.fill")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(Theme.Colors.accent)
                    }
                    .accessibilityLabel("Recenter on device location")
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
                if let userLoc = locationManager.userLocation {
                    lastQueriedCoordinate = userLoc
                    cameraPosition = .camera(MapCamera(centerCoordinate: userLoc, distance: 12000))
                    await fetchDynamicResources(around: userLoc)
                } else {
                    await fetchDynamicResources()
                }
            }
            .onChange(of: store.activeMapCategory) { _, _ in
                Task { await fetchDynamicResources() }
            }
            .onChange(of: locationManager.userLocation?.latitude) { _, newLat in
                if let newLat = newLat, let newLon = locationManager.userLocation?.longitude {
                    let newCoord = CLLocationCoordinate2D(latitude: newLat, longitude: newLon)
                    if lastQueriedCoordinate == nil {
                        lastQueriedCoordinate = newCoord
                        withAnimation(.easeInOut(duration: 0.4)) {
                            cameraPosition = .camera(MapCamera(centerCoordinate: newCoord, distance: 12000))
                        }
                        Task { await fetchDynamicResources(around: newCoord) }
                    }
                }
            }
        }
    }
    
    // MARK: - Google Maps-Style Floating Top Bar
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
            
            // Google Maps-Style Filter Pills
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
                                    .font(.system(.subheadline, design: .default, weight: store.activeMapCategory == category ? .bold : .medium))
                            }
                            .padding(.horizontal, 14)
                            .padding(.vertical, 7)
                            .background(store.activeMapCategory == category ? Theme.Colors.accent : Color(UIColor.systemBackground))
                            .foregroundStyle(store.activeMapCategory == category ? Color.white : Theme.Colors.primaryText)
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(store.activeMapCategory == category ? Color.clear : Color(UIColor.separator), lineWidth: 1)
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
    private func fetchDynamicResources(around coordinate: CLLocationCoordinate2D? = nil) async {
        let target = coordinate ?? activeCoordinate
        let isSupported = SupportedRegion.contains(coordinate: target)
        
        await MainActor.run {
            self.isRegionSupported = isSupported
            if !isSupported {
                self.discoveredResources = []
                self.selectedResourceId = nil
                self.isLoading = false
            }
        }
        
        guard isSupported else { return }
        
        await MainActor.run {
            self.isLoading = true
        }
        
        let results = await DynamicResourceService.fetchNearbyResources(
            around: target,
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
            HStack(alignment: .center, spacing: 14) {
                // 3D Isometric Resource Category Illustration
                Image(resource.category.asset3DName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                
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
                        .background(Theme.Colors.accent)
                        .foregroundStyle(Color.white)
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
