//
//   CircularShape.swift
//  SwiftUIShape
//
//  Created by Melik Demiray on 3.01.2024.
//

import SwiftUI
import Foundation

struct _CircularShape: Shape {

    var percent: Double
    var startAngle: Double

    init(percent: Double = 100, startAngle: Double = -90) {
        self.percent = percent
        self.startAngle = startAngle
    }


    func path(in rect: CGRect) -> Path {

        let width = rect.width
        let height = rect.height
        let center = CGPoint(x: width / 2, y: height / 2)
        let radius = min(width, height) / 2
        let endAngle = (self.percent / 100 * 360) + self.startAngle


        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: false)

        }
    }
}
