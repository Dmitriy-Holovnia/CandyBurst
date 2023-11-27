//
//  ContentView.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Tab = .home
    
    var body: some View {
        ZStack {
            switch selectedTab {
            case .home:
                HomeView()
            case .menu:
                MenuView()
            }
            
            VStack {
                Spacer()
                
                TabView(selectedTab: $selectedTab)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
