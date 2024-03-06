//
//  ProfileView.swift
//  SideMenuTest
//
//  Created by Quasar on 13.02.2024.
//

import SwiftUI

struct ProfileView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        ZStackWithBackground {
            VStack {
                HeaderView(presentSideMenu: $presentSideMenu)
                Spacer()
                Text("Profile View")
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
