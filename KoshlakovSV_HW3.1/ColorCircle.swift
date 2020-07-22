//
//  ColorCircle.swift
//  KoshlakovSV_HW3.1
//
//  Created by Koshlakov Sergey on 21.07.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    var color: UIColor
    var opacity: Double

    var body: some View {

        Color(color).opacity(opacity)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))

    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.5)
    }
}
