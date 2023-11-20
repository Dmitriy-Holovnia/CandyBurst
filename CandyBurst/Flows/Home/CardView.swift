//
//  CardView.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Color.mainPink
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: 24)
                    .fill(.mainLightRed)
                    .frame(height: 260)
                    .overlay {
                        Image(.frameQr)
                            .resizable()
                            .scaledToFit()
                    }

                Text("Show your Barcode\nto our waiter")
                    .font(
                        Font.custom("SF Pro", size: 30)
                            .weight(.medium)
                    )
                    .kerning(1.35)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Spacer()
                    .frame(height: 50)
                
                HStack {
                    Spacer()
                    
                    ZStack {
                        Image(.candy1)
                            .zIndex(1.0)
                        
                        Image(.candy2)
                            .offset(x: -50)
                    }
                }
            }
            .overlay(alignment: .top) {
                Image(.clover)
                    .ignoresSafeArea()
                    .offset(x: 10)
            }
        }
    }
}

#Preview {
    CardView()
}
