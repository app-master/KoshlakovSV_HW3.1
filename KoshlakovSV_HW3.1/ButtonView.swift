//
//  ButtonView.swift
//  KoshlakovSV_HW3.1
//
//  Created by Koshlakov Sergey on 22.07.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    var tappedBlock: () -> ()

    var body: some View {
        Button(action: { self.tappedBlock() }) {
            Text("Next")
        }
        .frame(width: 200, height: 50)
        .font(.title)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 2))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(tappedBlock: {})
    }
}
