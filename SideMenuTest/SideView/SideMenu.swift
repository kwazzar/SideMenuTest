//
//  SideMenu.swift
//  SideMenuTest
//
//  Created by Quasar on 12.02.2024.
//

import SwiftUI

struct SideMenu: View {
    @Binding var isShowing: Bool
    var content: SideMenuView
    var edgeTransition: AnyTransition = .move(edge: .leading)
    var body: some View {
        ZStack(alignment: .bottom) {
            if (isShowing) {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                content
                    .transition(edgeTransition)
                    .background(
                        Color.gray
                    )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowing)
    }
}
//struct SideMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenu()
//    }
//}
