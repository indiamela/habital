//
//  ConfirmView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/04/02.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("laugh")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height/2, alignment: .leading)
                Rectangle()
                    .fill(Color.MyTheme.Pink)
            }
            .edgesIgnoringSafeArea(.all)

            VStack{
                Rectangle()
                    .fill(LinearGradient.MyTheme.gradientBackGroundPink)
                    .frame(height:UIScreen.main.bounds.height/2 + 10)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView()
    }
}
