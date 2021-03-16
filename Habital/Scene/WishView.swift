//
//  WishView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct WishView: View {
    var body: some View {
        NavigationLink(
            destination: OutcomeView(),
            label: {Text("Navigate")})
    }
}

struct WishView_Previews: PreviewProvider {
    static var previews: some View {
        WishView()
    }
}
