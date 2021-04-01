//
//  WishSubView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/28.
//

import SwiftUI

struct ObstacleSubView: View {
    
    var body: some View {
        VStack{
            Text("たとえば...")
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.MyTheme.DarkGray)
            VStack(alignment: .leading, spacing: 5, content: {
                Text("- 寝坊してしまってやる気がでない")
                Text("- 準備が面倒で行くのが面倒になる")
                Text("- 仕事帰りはつかれて寝てしまう")
            })
            .font(.headline)
            .padding(.top, 10)
            .padding(.leading, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color.MyTheme.DarkGray)
        }
    }
}

struct ObstacleSubView_Previews: PreviewProvider {
    static var previews: some View {
        ObstacleSubView()
            .previewLayout(.sizeThatFits)
    }
}
