//
//  ColorSliderView.swift
//  SlidersSwiftUI
//
//  Created by Alexandr Baranov on 17.12.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Slider(value: $value)
                .tint(color)
            Text(Int(value * 255).formatted())
                .frame(width: 48)
        }
    }
}

#Preview {
    ColorSliderView(value: .constant(0.5), color: .red)
}
