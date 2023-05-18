//
//  OnboardingStepView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 13.05.2023.
//

import SwiftUI

struct OnboardingStepView: View {
    
    var title: String = ""
    var imageName: String = ""
    var isLast: Bool = false
    var currentIndex: Int = 0
    var continueAction: ((_ index: Int) -> Void)?
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Spacer(minLength: 200.0)
            }
            
            VStack {
                Spacer(minLength: 350.0)
                
                Image("marvelLogo")
                
                Spacer()
                
                HStack(spacing: 10.0) {
                    ForEach(0..<6) { index in
                        Circle()
                            .foregroundColor(index == currentIndex ? .red : .white)
                            .frame(width: 10.0, height: 10.0)
                    }
                }
                
                Spacer()
                
                if isLast {
                    VStack(spacing: 20.0) {
                        Button(action: {
                            print("Signup")
                        }) {
                            Text("Signup")
                                .frame(width: 300.0, height: 50.0, alignment: .center)
                        }
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        
                        Button(action: {
                            print("Login")
                        }) {
                            Text("Login")
                                .frame(width: 300.0, height: 50.0, alignment: .center)
                        }
                        .background(Color.clear)
                        .foregroundColor(Color.white)
                        .border(Color.red, width: 3.0)
                    }
                    
                    Spacer()
                } else {
                    Text(title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing], 90.0)
                    
                    Spacer()
                    
                    Button(action: {
                        continueAction?(currentIndex + 1)
                    }) {
                        Text("Continue")
                            .frame(width: 300.0, height: 50.0, alignment: .center)
                    }
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    
                    Spacer()
                }
            }
        }
    }
    
}

struct OnboardingStepView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStepView()
    }
}
