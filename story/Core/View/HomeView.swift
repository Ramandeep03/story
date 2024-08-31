//
//  HomeView.swift
//  story
//
//  Created by Ramandeep Singh on 31/08/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Tab = .all
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators:false){
                VStack{
                    MostReadBookView()
                    SegmentControl(selectedTab: $selectedTab)
                    BookGridView(selectedCategory: $selectedTab)
                }
            }
            .navigationTitle("Books Collection")
        }
    }
}

#Preview {
    HomeView()
}
