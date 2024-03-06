//
//  Header.swift
//  SideMenuTest
//
//  Created by Quasar on 13.02.2024.
//
import SwiftUI

struct HeaderView: View {
    @Binding var presentSideMenu: Bool

    var body: some View {
        HStack {
            Button {
                presentSideMenu.toggle()
            } label: {
                Image("Menu")
                    .background(.black)
                    .frame(width: 32, height: 32)
            }
            Spacer()
        }
    }
}
