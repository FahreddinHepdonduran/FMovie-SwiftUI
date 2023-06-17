//
//  OnboardingView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 13.05.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @EnvironmentObject private var appViewModel: AppViewModel
    
    var body: some View {
        TabView(selection: $appViewModel.selectedOnboardingTabIndex) {
            ForEach(Array(appViewModel.onboardingData().enumerated()), id: \.1.0) { index, item in
                OnboardingStepView(
                    title: item.0,
                    imageName: item.1,
                    isLast: index == appViewModel.onboardingData().count - 1,
                    currentIndex: index
                )
                .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .environmentObject(AppViewModel())
    }
}
