//
//  ContentView.swift
//  KoshlakovSV_HW3.1
//
//  Created by Koshlakov Sergey on 21.07.2020.
//  Copyright © 2020 Koshlakov Sergey. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    enum ColorState {
        case red
        case yellow
        case green
        case none
    }

    @State var state: ColorState = .none

    @State var red: ColorCircle = ColorCircle(color: .red, opacity: 0.5)
    @State var yellow: ColorCircle = ColorCircle(color: .yellow, opacity: 0.5)
    @State var green: ColorCircle = ColorCircle(color: .green, opacity: 0.5)

    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack {
                red.padding(.bottom, 10)
                yellow.padding(.bottom, 10)
                green
                Spacer()
                ButtonView { self.changeState(state: self.state) }
            }
        }
    }

    private func changeState(state: ColorState) {
        switch self.state {
        case .none:
            self.red = ColorCircle(color: .red, opacity: 1)
            self.state = .red
        case .red:
            self.red = ColorCircle(color: .red, opacity: 0.5)
            self.yellow = ColorCircle(color: .yellow, opacity: 1)
            self.state = .yellow
        case .yellow:
            self.yellow = ColorCircle(color: .yellow, opacity: 0.5)
            self.green = ColorCircle(color: .green, opacity: 1)
            self.state = .green
        case .green:
            self.green = ColorCircle(color: .green, opacity: 0.5)
            self.red = ColorCircle(color: .red, opacity: 1)
            self.state = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
