//
//  WelcomeView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct WelcomeView: View {
    @State var nextView:Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("start1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
                    NavigationLink(
                        destination: WishView(),
                        label: {
                            Text("Navigate")
                        })
                }
            }
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
