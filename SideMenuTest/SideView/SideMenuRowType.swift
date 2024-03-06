//
//  SideMenuRowType.swift
//  SideMenuTest
//
//  Created by Quasar on 13.02.2024.
//

import SwiftUI

enum SideMenuRowType: Int, CaseIterable{
    case home
    case favorite
    case chat
    case profile

    var title: String{
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }

    var iconName: String{
        switch self {
        case .home:
            return "home"
        case .favorite:
            return "favorite"
        case .chat:
            return "chat"
        case .profile:
            return "profile"
        }
    }
}

enum TabSD: String, CaseIterable {
    case mods = "Home"
    case skins = "Skins"
    case editor = "Editor"
//    case buildings = "Buildings"
//    case myWorks = "My Works"
//    case maps = "Maps"
    case favourite = "Favorite"

    var image: Image {
        switch self {
        case .mods:
            return Image("Mods")
        case .skins:
            return Image("Skins")
//        case .buildings:
//            return Image("Buildings")
        case .editor:
            return Image("Editor")
        case .favourite:
            return Image("Favorite")
//        case .myWorks:
//            return Image("MyWorks")
//        case .maps:
//            return Image("Maps")
        }
    }

    var index: Int {
        return TabSD.allCases.firstIndex(of: self) ?? 0
    }
}
