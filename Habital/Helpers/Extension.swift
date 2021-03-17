//
//  Extension.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/18.
//

import Foundation
import SwiftUI

extension Color {
    struct MyTheme {
        static var DarkGray:Color {
            return Color("ColorDarkGray")
        }
        static var Orange:Color {
            return Color("ColorOrange")
        }
        static var Pink:Color {
            return Color("ColoPink")
        }
    }
}

    struct MyButtonStyle: ButtonStyle {
      func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(12.0)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .opacity(configuration.isPressed ? 0.4 : 1)
        }
    }

