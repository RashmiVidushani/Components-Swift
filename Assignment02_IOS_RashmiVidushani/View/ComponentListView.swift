//
//  ComponentListView.swift
//  Assignment02_IOS
//
//  Created by Rashmi Vidushani on 2025-02-16.
//

import SwiftUI

struct ComponentListView: View {
    
    // Observes and manages the state for component data and search functionality
    @StateObject private var viewModel = ComponentViewModel()
    var body: some View {
            NavigationView {
                List {
                    // Iterates through the predefined sections
                    ForEach(["Text Input/Output", "Controls", "Container Views", "List"], id: \.self) { section in
                        // Section header for each category
                        Section(header: Text(section)) {
                            // Filters and displays components that belong to the current section
                            ForEach(viewModel.listData.filter { $0.section == section }) { component in
                                NavigationLink(destination: ComponentDetailView(component: component)) {
                                    Label(component.name, systemImage: component.systemIcon)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Components")
                // Search bar for filtering components
                .searchable(text: $viewModel.searchTerm, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search for Components")
                // Executes when the search term changes
                .onChange(of: viewModel.searchTerm) {
                    viewModel.filterSearchResults()
                    UIScrollView.animate(withDuration: 0.3) {
                        UIScrollView.setAnimationsEnabled(false)
                    }
                }
            }
        }
    
}
