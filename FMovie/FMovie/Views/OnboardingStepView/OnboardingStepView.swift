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
                Spacer(minLength: 300.0)
                
                Image("marvelLogo")
                
                Spacer()
                
                Text(title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 90.0)
                
                Spacer()
                
                Button(action: {
                    print("continue")
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

struct OnboardingStepView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStepView()
    }
}
