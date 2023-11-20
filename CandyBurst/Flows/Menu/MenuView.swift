//
//  MenuView.swift
//  CandyBurst
//
//  Created by Dmitriy Holovnia on 20.11.2023.
//

import SwiftUI

struct MenuView: View {
    
    @StateObject var viewModel = MenuViewModel()
    @State var showDetail = false
    @State var selectedItem: MenuItem?
    
    var body: some View {
        ZStack {
            Color.mainPink
                .ignoresSafeArea()
            
            ScrollView {
                header(title: "Salads")
                    .padding(.horizontal, 10)
                
                ForEach(viewModel.salads) { salad in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(.mainBrown)
                                                    
                        ZStack{
                            RoundedRectangle(cornerRadius: 10.0)
                                .foregroundColor(.mainPink)
                                
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.white)
                            
                            HStack {
                                Image(.pizza)
                                    .padding(.vertical, 7)
                                    .padding(.leading, 9)
                                
                                VStack {
                                    Text(salad.name)
                                        .font(
                                            Font.custom("SF Pro", size: 15)
                                                .weight(.medium)
                                        )
                                        .textCase(.uppercase)
                                        .kerning(0.675)
                                        .foregroundColor(.white)
                                    
                                    Spacer()
                                }
                                .padding(.top, 7)
                                Spacer()
                            }
                            .overlay(alignment: .bottomTrailing) {
                                Text("\(salad.price) Credits")
                                    .font(
                                        Font.custom("SF Pro", size: 15)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                                    .kerning(0.675)
                                    .multilineTextAlignment(.center)
                                    .padding(.trailing, 10)
                                    .padding(.bottom, 7)
                                
                            }
                        }
                        .padding(.horizontal, 9)
                        .padding(.vertical, 7)
                    }
                    .onTapGesture {
                        withAnimation() {
                            showDetail = true
                        }
                    }
                }
                .padding(.horizontal, 10)
                
                header(title: "Snacks")
                    .padding(.horizontal, 10)
                
                ForEach(viewModel.snacks) { snack in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(.mainBrown)
                                                    
                        ZStack{
                            RoundedRectangle(cornerRadius: 10.0)
                                .foregroundColor(.mainPink)
                                
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.white)
                            
                            HStack {
                                Image(.pizza)
                                    .padding(.vertical, 7)
                                    .padding(.leading, 9)
                                
                                VStack {
                                    Text(snack.name)
                                        .font(
                                            Font.custom("SF Pro", size: 15)
                                                .weight(.medium)
                                        )
                                        .textCase(.uppercase)
                                        .kerning(0.675)
                                        .foregroundColor(.white)
                                    
                                    Spacer()
                                }
                                .padding(.top, 7)
                                Spacer()
                            }
                            .overlay(alignment: .bottomTrailing) {
                                Text("\(snack.price) Credits")
                                    .font(
                                        Font.custom("SF Pro", size: 15)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                                    .kerning(0.675)
                                    .multilineTextAlignment(.center)
                                    .padding(.trailing, 10)
                                    .padding(.bottom, 7)
                                
                            }
                        }
                        .padding(.horizontal, 9)
                        .padding(.vertical, 7)
                    }
                    .onTapGesture {
                        withAnimation() {
                            showDetail = true
                        }
                        
                    }
                }
                .padding(.horizontal, 10)
                
                Spacer()
                    .frame(height: 100)
            }
        }
        .overlay {
            ZStack(alignment: .bottom) {
                Rectangle()
                    .fill(Color.black.opacity(0.5))
                    .ignoresSafeArea()
                    .opacity(showDetail ? 1 : 0)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.mainPink)
                    
                    VStack {
                        ZStack(alignment: .bottom) {
                            Image(.pizza)
                                .resizable()
                                .scaledToFill()
                            ZStack(alignment: .topLeading) {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.mainLightRed)
                                
                                Text("SALAD WITH BEEF TONGUE")
                                    .padding(.top, 12)
                                    .padding(.leading, 25)
                            }
                            .frame(height: 100)
                        }
                        .padding(.horizontal, 17)
                        .padding(.top, 22)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.mainLightRed)
                                
                            Text("get")
                        }
                        .frame(height: 45)
                        .padding(.bottom, 14)
                        .padding(.horizontal, 17)
                        .onTapGesture {
                            withAnimation() {
                                showDetail = false
                            }
                        }
                    }
                }
                .frame(height: 370)
                .offset(y: showDetail ? 0 : 370)
            }
            .zIndex(2.0)
            .ignoresSafeArea()
        }
        .onAppear {
            viewModel.getData()
        }
    }
    
    @ViewBuilder
    func header(title: String) -> some View {
        HStack {
            Text(title)
                .font(
                    Font.custom("SF Pro", size: 35)
                        .weight(.bold)
                )
                .foregroundColor(.white)
            
            Spacer()
        }
    }
}

#Preview {
    MenuView()
}
