//
//  SideMenuView.swift
//  SideMenuTest
//
//  Created by Quasar on 13.02.2024.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 350, height: 64)
            .background(Color(red: 0.33, green: 0.36, blue: 0.82))
            .foregroundColor(.green)
            .cornerRadius(2)
    }
}


struct SideMenuView: View {

    @Binding var presentSideMenu: Bool
    @EnvironmentObject private var navigationStore: NavigatorItem

    var body: some View {
        HStack {
            ZStackWithBackground{
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(TabSD.allCases, id: \.self){ tab in
                        RowView(isSelected: navigationStore.activeTab == tab,
                                imageName: tab.image,
                                title: tab.rawValue) {
                            navigationStore.activeTab = tab
                            presentSideMenu.toggle()
                        }
                    }
                    Spacer()
                }
                .padding(.top, 100)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            Spacer()
        }
    }

    func RowView(isSelected: Bool, imageName: Image, title: String, hideDivider: Bool = false, action: @escaping (()->())) -> some View{
        Button{
            action()
        } label: {
            VStack(alignment: .leading){
                HStack(spacing: 20){
                    ZStack{
                        imageName
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isSelected ? .black : .gray)
                            .frame(width: 26, height: 26)
                    }
                    .frame(width: 30, height: 30)
                    Text(title)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(isSelected ? .black : .gray)
                    Spacer()
                }
            }
        }
        .modifier(ButtonModifier())
        .padding(.bottom, 20)
    }
}
//struct SideMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuView()
//    }
//}
