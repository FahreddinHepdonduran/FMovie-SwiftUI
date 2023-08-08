//
//  HomeView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 7.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    private let posters: [String] = [
        "onboarding1",
        "onboarding2",
        "onboarding3"
    ]
    
    var body: some View {
        ZStack {
            Color("homeBackground")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical) {
                VStack {
                    HStack  {
                        Spacer(
                            minLength: (UIScreen.main.bounds.size.width / 2) - 50.0
                        )
                        
                        Image("marvelLogo")
                            .resizable()
                            .frame(
                                width: 100.0,
                                height: 45.0
                            )
                        
                        Spacer()
                        
                        Button {
                            print("profile")
                        } label: {
                            Image("profile-icon")
                                .resizable()
                                .frame(
                                    width: 70.0,
                                    height: 70.0
                                )
                        }
                        .padding(.trailing)
                    }
                    
                    Spacer()
                        .frame(
                            height: 30.0
                        )
                    
                    VStack {
                        HStack {
                            Text("Latest Movies")
                                .foregroundColor(.white)
                                .bold()
                                .font(Font.system(size: 24.0))
                                .padding(.leading)
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 10.0) {
                                ForEach(posters, id: \.self) { imgName in
                                    Image(imgName)
                                        .resizable()
                                        .frame(
                                            height: 173.0
                                        )
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    VStack {
                        HStack {
                            Text("Latest Series")
                                .foregroundColor(.white)
                                .bold()
                                .font(Font.system(size: 24.0))
                                .padding(.leading)
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(posters, id: \.self) { imgName in
                                    Image(imgName)
                                        .resizable()
                                        .frame(
                                            height: 173.0
                                        )
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    VStack {
                        HStack {
                            Text("Trending Today")
                                .foregroundColor(.white)
                                .bold()
                                .font(Font.system(size: 24.0))
                                .padding(.leading)
                            
                            Spacer()
                        }
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(posters, id: \.self) { imgName in
                                    Image(imgName)
                                        .resizable()
                                        .frame(
                                            width: 100.0,
                                            height: 150.0
                                        )
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    Spacer()
                        .frame(
                            height: 100.0
                        )
                }
            }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
