//
//  WishSubView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/28.
//

import SwiftUI

struct OutcomeSubView: View {
    
    var body: some View {
        VStack{
            Text("たとえば...")
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.MyTheme.DarkGray)
            VStack(alignment: .leading, spacing: 5, content: {
                Text("- 社内評価があがって収入が高くなる！")
                Text("- 筋肉がついてモテるようになる！")
                Text("- 心身ともに健康になる！")
            })
            .font(.headline)
            .padding(.top, 10)
            .padding(.leading, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color.MyTheme.DarkGray)
        }
    }
}

struct OutcomeSubView_Previews: PreviewProvider {
    static var previews: some View {
        OutcomeSubView()
            .previewLayout(.sizeThatFits)
    }
}
