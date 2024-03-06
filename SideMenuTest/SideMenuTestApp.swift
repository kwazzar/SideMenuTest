//
//  SideMenuTestApp.swift
//  SideMenuTest
//
//  Created by Quasar on 12.02.2024.
//

import SwiftUI

@main
struct SideMenuTestApp: App {

    @StateObject var navigator = NavigatorItem()

    var body: some Scene {
        WindowGroup {
            MainTabbedView()
                .environmentObject(navigator)
        }
    }
}
