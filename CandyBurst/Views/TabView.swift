//
//  TabView.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home
    case menu
}

struct TabView: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        HStack {
            ForEach(Tab.allCases, id: \.rawValue) { item in
                Spacer()
                
                VStack {
                    Image(item.rawValue)
                        .font(.system(size: 25))
                        .frame(height: 25)
                    
                    Text(item.rawValue)
                }
                .foregroundStyle(selectedTab != item ? .gray : .white)
                .onTapGesture {
                    selectedTab = item
                }
                Spacer()
            }
        }
        .frame(width: nil, height: 73)
        .background(Color.mainPink)
        .cornerRadius(40, corners: [.topLeft, .topRight])
    }
}

#Preview {
    TabView(selectedTab: .constant(.home))
}
