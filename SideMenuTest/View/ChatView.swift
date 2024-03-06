//
//  ChatView.swift
//  SideMenuTest
//
//  Created by Quasar on 13.02.2024.
//

import SwiftUI

struct ChatView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        ZStackWithBackground {
            VStack {
                HeaderView(presentSideMenu: $presentSideMenu)
                Spacer()
                Text("Chat View")
                Spacer()
            }
            .padding(.horizontal, 24)
        }
    }
    }

//struct ChatView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatView()
//    }
//}
