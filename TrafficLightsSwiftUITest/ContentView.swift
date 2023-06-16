//
//  ContentView.swift
//  TrafficLightsSwiftUITest
//
//  Created by Светлана Сенаторова on 16.06.2023.
//

import SwiftUI

struct ContentView: View {
   
    @State private var redOpacity: Double = 0.3
    @State private var yellowOpacity: Double = 0.3
    @State private var greenOpacity: Double = 0.3
    @State private var text = "START"
    @State private var color: Color = .red
  
    var body: some View {
        VStack {
            VStack {
                CircleView(color: .red)
                    .opacity(redOpacity)
                CircleView(color: .yellow)
                    .opacity(yellowOpacity)
                CircleView(color: .green)
                    .opacity(greenOpacity)
            }
            .padding()
            Spacer()
            Button(action: switchOnOff) {
                Text(text)
                    .font(.title)
            }
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
