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
        ("Step1", "onboarding1"),
        ("Step2", "onboarding2"),
        ("Step3", "onboarding3"),
        ("Step4", "onboarding4"),
        ("Step5", "onboarding5"),
        ("Step6", "onboarding6")
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
