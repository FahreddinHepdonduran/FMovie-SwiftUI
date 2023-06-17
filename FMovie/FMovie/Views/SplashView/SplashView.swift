//
//  SplashView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 13.05.2023.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject private var appViewModel: AppViewModel
    
    private let visibilityDuration: CGFloat = 2.0
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Image("marvelLogo")
        }
    }
    
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
