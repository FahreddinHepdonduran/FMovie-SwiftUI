//
//  SplashView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 13.05.2023.
//

import SwiftUI

struct SplashView: View {
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
