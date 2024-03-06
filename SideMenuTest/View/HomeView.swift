//
//  HomeView.swift
//  SideMenuTest
//
//  Created by Quasar on 12.02.2024.
//

import SwiftUI

struct HomeView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        ZStackWithBackground {
            VStack {
                HeaderView(presentSideMenu: $presentSideMenu)
                Spacer()
                Text("Home View")
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
