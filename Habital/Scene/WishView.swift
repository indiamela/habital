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
        ZStack{
            VStack{
                Image("wish")
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height/2.5, alignment: .leading)
                    .offset(x: -160, y: 30)
                    .clipped()
                Rectangle()
                    .fill(Color.MyTheme.Orange)
            }
            .edgesIgnoringSafeArea(.all)

            VStack{
                Rectangle()
                    .fill(LinearGradient.MyTheme.gradiateBackGround)
                    .frame(height:UIScreen.main.bounds.height/2.5 + 10)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)

            VStack{
                VStack(alignment: .center, spacing: 20) {
                    Text("Wish")
                        .font(.custom("Times-Roman", size: 40))
                        .fontWeight(.bold)
                    Text("あなたが身につけたい習慣目標は？")
                        .font(.headline)
                }
                .padding(.top, 200)
                .foregroundColor(Color.MyTheme.DarkGray)
                TextField("add your wish", text: $wishText)
                    .frame(height: 40)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
                    .shadow(radius: 5)
                    .foregroundColor(Color.MyTheme.DarkGray)
                Text("たとえば...")
                    .font(.subheadline)
                    .padding(.top, 50)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.MyTheme.DarkGray)
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("- 読書をする")
                    Text("- ランニングをする")
                    Text("- 瞑想をする")
                })
                .font(.headline)
                .padding(.top, 10)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.MyTheme.DarkGray)
                
                Spacer()
                
                if wishText != "" {
                    NavigationLink(
                        destination: OutcomeView(),
                        label: {
                            Text("next".uppercased())
                                .foregroundColor(Color.MyTheme.DarkGray)
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity)
                                .frame(height: 60)
                        }
                    )
                    .background(LinearGradient.MyTheme.gradientPink)
                    .cornerRadius(60)
                    .shadow(radius: 12)
                }
            }
            .padding(.horizontal,50)
        }
    }
    
//    func showNextButton() -> Bool{
//        guard wishText == "" else {
//            return true
//        }
//        return false
//    }
}

struct WishView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            WishView()
        }
    }
}
