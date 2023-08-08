//
//  TabItems.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 7.08.2023.
//

import Foundation

enum TabItems: Int, CaseIterable {
    case home = 0
    case categories
    case downloads
    case more
    
    var itemIndex: Int {
        return self.rawValue
    }
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .categories:
            return "Categories"
        case .downloads:
            return "Downloads"
        case .more:
            return "More"
        }
    }
    
    var selectedIconName: String {
        switch self {
        case .home:
            return "home-selected"
        case .categories:
            return "categories-selected"
        case .downloads:
            return "downloads-selected"
        case .more:
            return "more-selected"
        }
    }
    
    var unselectedIconName: String {
        switch self {
        case .home:
            return "home-unselected"
        case .categories:
            return "categories-unselected"
        case .downloads:
            return "downloads-unselected"
        case .more:
            return "more-unselected"
        }
    }
}
