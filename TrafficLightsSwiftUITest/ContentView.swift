//
//  ContentView.swift
//  TrafficLightsSwiftUITest
//
//  Created by Светлана Сенаторова on 16.06.2023.
//

import SwiftUI

struct ContentView: View { 
   
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var text = "START"
    @State private var color: Color = .red
  
    var body: some View {
        VStack {
            VStack {
                CircleView(color: .red, oppacity: redOpacity)
                CircleView(color: .yellow, oppacity: yellowOpacity)
                CircleView(color: .green, oppacity: greenOpacity)
            }
            .padding()
            Spacer()
            ButtonView(title: text, action: switchOnOff)
            .padding(16)
        }
    }
    
    private func switchOnOff() {
        text = "NEXT"
        switch color {
        case Color.red:
            greenOpacity = 0.3
            redOpacity = 1
            color = .yellow
        case Color.yellow:
            redOpacity = 0.3
            yellowOpacity = 1
            color = .green
        default:
            yellowOpacity = 0.3
            greenOpacity = 1
            color = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
