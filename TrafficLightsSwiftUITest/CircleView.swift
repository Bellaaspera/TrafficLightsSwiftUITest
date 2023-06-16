//
//  CircleView.swift
//  TrafficLightsSwiftUITest
//
//  Created by Светлана Сенаторова on 16.06.2023.
//

import SwiftUI

struct CircleView: View {
    var color: Color
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(radius: 4)
            .padding()
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red)
    }
}
