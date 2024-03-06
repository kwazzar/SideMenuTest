//
//  FavoriteView.swift
//  SideMenuTest
//
//  Created by Quasar on 13.02.2024.
//

import SwiftUI

struct FavoriteView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        ZStackWithBackground {
            VStack {
                HeaderView(presentSideMenu: $presentSideMenu)
                Spacer()
                Text("Favorite View")
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
    }

//struct FavoriteView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteView()
//    }
//}
