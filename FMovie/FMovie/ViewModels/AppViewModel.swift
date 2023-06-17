//
//  AppViewModel.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 6.06.2023.
//

import Foundation

final class AppViewModel: ObservableObject {
    
    @Published var sceneType: SceneType = .splash
    @Published var selectedOnboardingTabIndex: Int = 0
    
    func onboardingData() -> [(String, String)] {
        return [
            ("All your favourite MARVEL Movies & Series at one place",
             "onboarding1"),
            ("Watch Online or Download Offline",
             "onboarding2"),
            ("Create profiles for diffrent members & get personalised recommendations",
             "onboarding3"),
            ("Plans according to your needs at affordable prices",
             "onboarding4"),
            ("Let’s Get Started !!!",
             "onboarding5"),
            ("", "onboarding6")
        ]
    }
    
}
