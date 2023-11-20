//
//  TabView.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import SwiftUI

enum Tab {
    case home
    case menu
}

struct TabView: View {
    
    @State var tab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch tab {
            case .home:
                HomeView()
            case .menu:
                MenuView()
            }
        }
        .overlay(alignment: .bottom) {
            ZStack {
                Rectangle()
                    .fill(Color.mainPink)
                    .frame(height: 100)
                    .cornerRadius(40, corners: [.topLeft, .topRight])
                
                HStack(spacing: 70) {
                    VStack {
                        Image(.card)
                        
                        Text("Home")
                            .foregroundStyle(Color.white)
                    }
                    .onTapGesture {
                        tab = .home
                    }
                    
                    VStack {
                        Image(.menu)
                        
                        Text("Menu")
                            .foregroundStyle(Color.white)
                    }
                    .onTapGesture {
                        tab = .menu
                    }
                }
            }
        }
    }
}

#Preview {
    TabView()
}
