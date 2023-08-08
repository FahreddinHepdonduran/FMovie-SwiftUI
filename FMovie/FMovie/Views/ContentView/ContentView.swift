//
//  ContentView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 12.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var appViewModel: AppViewModel
    
    var body: some View {
        switch appViewModel.sceneType {
        case .splash:
            SplashView()
        case .onboarding:
            OnboardingView()
        case .login:
            LoginView()
        case .signup:
            SignupView()
        case .home:
            TabbedView()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppViewModel())
    }
}
