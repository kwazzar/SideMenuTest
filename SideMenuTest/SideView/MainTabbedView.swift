//
//  MainTabbedView.swift
//  SideMenuTest
//
//  Created by Quasar on 12.02.2024.
//

import SwiftUI
import FlowStacks

struct MainTabbedView: View {

    @State var presentSideMenu = false
    @EnvironmentObject private var navigator: NavigatorItem


    var body: some View {
        Router($navigator.routes) { $screen, _ in
            pushContent(with: $screen)
        }
    }

    @ViewBuilder
    func pushContent(with path: Binding<MainRoute>) -> some View {
        switch path.wrappedValue {
            case .sideView:
                sideView

        case .detail:
            HomeView(presentSideMenu: $presentSideMenu)
        }
}



    var sideView: some View {
        TabView(selection: $navigator.activeTab) {
            HomeView(presentSideMenu: $presentSideMenu)
                .tag(TabSD.mods)
            ChatView(presentSideMenu: $presentSideMenu)
                .tag(TabSD.skins)
            ProfileView(presentSideMenu: $presentSideMenu)
                .tag(TabSD.editor)
            FavoriteView(presentSideMenu: $presentSideMenu)
                .tag(TabSD.favourite)
        }
        .overlay(
            SideMenu(isShowing: $presentSideMenu, content:  SideMenuView(presentSideMenu: $presentSideMenu))
        )
    }
}
//struct MainTabbedView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabbedView()
//    }
//}

