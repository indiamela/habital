//
//  WishSubView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/28.
//

import SwiftUI

struct PlanSubView: View {
    
    var body: some View {
        VStack{
            Text("たとえば...")
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.MyTheme.DarkGray)
            VStack(alignment: .leading, spacing: 5, content: {
                Text("- 毎朝スッキリ起きるために夜10時には必ずねる！")
                Text("- ジムの服装を常にもっておく！")
                Text("- 飲み会は1時間で切り上げる！")
            })
            .font(.headline)
            .padding(.top, 10)
            .padding(.leading, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color.MyTheme.DarkGray)
        }
    }
}

struct PlanSubView_Previews: PreviewProvider {
    static var previews: some View {
        PlanSubView()
            .previewLayout(.sizeThatFits)
    }
}
