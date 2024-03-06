//
//  Coordinator.swift
//  SideMenuTest
//
//  Created by Quasar on 14.02.2024.
//

import FlowStacks
import SwiftUI

enum MainRoute_MMP: Hashable {
    case sideView
    case detail
}

enum Screen {
    case sideView
    case home
    case chat
    case some

}

final class NavigatorItem: ObservableObject {
    @Published var routes: Routes<MainRoute_MMP> = [.root(.sideView, embedInNavigationView: true)]
    @Published var activeTab = MMP_TabSD.mods

    
}
