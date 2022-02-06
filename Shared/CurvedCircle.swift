//
//  CurvedCircle.swift
//  DemoSimpleApp
//
//  Created by Tariq Almazyad on 2/6/22.
//

import SwiftUI

struct CurvedCircle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addCurve(to: .init(x: rect.maxX, y: rect.maxY),
                      control1: .init(x: rect.minX, y: rect.maxY),
                      control2: .init(x: rect.maxX, y: rect.maxY))
        return path
    }
}

struct CurvedCircle_Previews: PreviewProvider {
    static var previews: some View {
        CurvedCircle()
            .stroke(Color.green, lineWidth: 10)
    }
}
