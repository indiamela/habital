//
//  WishView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct WishView: View {
    
//    @ObservedObject var woop: WoopEntity
    @State var wishText = ""
    
    var body: some View {
        WoopContentView(category: .Wish)
    }
}

struct WishView_Previews: PreviewProvider {
    static var previews: some View {
        WishView()
    }
}
