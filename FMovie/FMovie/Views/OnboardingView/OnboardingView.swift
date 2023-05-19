//
//  OnboardingView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 13.05.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var selectedTabIndex: Int = 0
    
    private let onboardingData: [(String, String)] = [
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
    
    var body: some View {
        if #available(iOS 14.0, *) {
            TabView(selection: $selectedTabIndex) {
                ForEach(Array(onboardingData.enumerated()), id: \.1.0) { index, item in
                    OnboardingStepView(
                        title: item.0,
                        imageName: item.1,
                        isLast: index == onboardingData.count - 1,
                        currentIndex: index,
                        continueAction: { index in
                            selectedTabIndex = index
                        }
                    )
                    .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
        } else {
            // TODO: Custom page view for earlier versions
        }
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
