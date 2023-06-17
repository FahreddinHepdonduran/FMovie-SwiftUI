//
//  FMovieApp.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 12.05.2023.
//

import SwiftUI

@main
struct FMovieApp: App {
    
    @StateObject private var appViewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appViewModel)
        }
    }
    
}
