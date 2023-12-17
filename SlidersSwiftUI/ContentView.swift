//
//  ContentView.swift
//  SlidersSwiftUI
//
//  Created by Alexandr Baranov on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...1)
    @State private var greenSliderValue = Double.random(in: 0...1)
    @State private var blueSliderValue = Double.random(in: 0...1)
    var body: some View {
        VStack(spacing: 32) {

            RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                .frame(height: 200)
                .foregroundStyle(Color(
                    red: redSliderValue,
                    green: greenSliderValue,
                    blue: blueSliderValue
                ))
            
            ColorSliderView(value: $redSliderValue, color: .red)
            ColorSliderView(value: $greenSliderValue, color: .green)
            ColorSliderView(value: $blueSliderValue, color: .blue)

            Spacer()
        }
        .padding(24)
    }
}

#Preview {
    ContentView()
}
