//
//  HomeView.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image(.homeBg)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Image(.homeIcon)
                
                Text("Balance")
                    .font(.system(size: 60))
                
                Text("100")
                    .font(.system(size: 60))
            }
        }
    }
}

#Preview {
    HomeView()
}
