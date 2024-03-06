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
    func pushContent(with path: Binding<MainRoute_MMP>) -> some View {
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
                .tag(MMP_TabSD.mods)
            ChatView(presentSideMenu: $presentSideMenu)
                .tag(MMP_TabSD.skins)
            ProfileView(presentSideMenu: $presentSideMenu)
                .tag(MMP_TabSD.editor)
            FavoriteView(presentSideMenu: $presentSideMenu)
                .tag(MMP_TabSD.favourite)
//            FavoriteView(presentSideMenu: $presentSideMenu)
//                .tag(MMP_TabSD.maps)
//            FavoriteView(presentSideMenu: $presentSideMenu)
//                .tag(MMP_TabSD.myWorks)
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

