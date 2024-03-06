//
//  ZStackBackground.swift
//  SideMenuTest
//
//  Created by Quasar on 13.02.2024.
//

import SwiftUI

typealias BuilderClosure<T> = () -> T

struct ZStackWithBackground<Content: View>: View {
    let alignment: Alignment
    let content: Content

    init(
        alignment: Alignment = .center,
        @ViewBuilder content: BuilderClosure<Content>
    ) {
        self.alignment = alignment
        self.content = content()
    }

    var body: some View {
        ZStack(alignment: alignment) {
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.57, green: 0.32, blue: 0.89), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.16, green: 0, blue: 0.36), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
            )
            .ignoresSafeArea()
            content
        }
    }
}
