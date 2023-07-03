//
//  SwiftUIView.swift
//  TrafficLightsSwiftUITest
//
//  Created by Светлана Сенаторова on 03.07.2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
      var body: some View {
    Button(action: action) {
        Text(title)
            .font(.title)
            .foregroundColor(Color.white)
    }
    .frame(width: 120, height: 60)
    .background(Color.blue)
    .cornerRadius(20)
    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 7))
    .shadow(radius: 4)
}
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
