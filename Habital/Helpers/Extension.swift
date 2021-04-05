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
            return Color("ColorPink")
        }
    }
}

extension LinearGradient {
    struct MyTheme {
        static var gradientPink:LinearGradient{
            return LinearGradient(gradient: Gradient(colors: [Color.MyTheme.Pink, Color.pink]), startPoint: .leading, endPoint: .trailing)
        }
        static var gradientOrange:LinearGradient {
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing)
        }
        static var gradientBackGroundOrange:LinearGradient {
            return LinearGradient(gradient: Gradient(colors: [Color.MyTheme.Orange, Color.MyTheme.Orange.opacity(0.2)]), startPoint: .bottom, endPoint: .top)
        }
        static var gradientBackGroundPink:LinearGradient {
            return LinearGradient(gradient: Gradient(colors: [Color.MyTheme.Pink, Color.MyTheme.Pink.opacity(0.2)]), startPoint: .bottom, endPoint: .top)
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

