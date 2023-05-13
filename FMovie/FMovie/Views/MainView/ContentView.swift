//
//  ContentView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 12.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var initialState: String = "splash"
    
    var body: some View {
        if initialState == "splash" {
            SplashView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        initialState = "onboarding"
                    }
                }
        } else {
            OnboardingView()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
