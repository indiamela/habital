//
//  WishView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct WoopContentView: View {
    
//    @State var wishText = ""
//    @State var topImage:String
//    @State var title:String
//    @State var subtitle:String
//    @State var textField:String
    @State var resultText = ""
    var category: Woop.Category
    
    var body: some View {
        ZStack{
            VStack{
                Image(category.topImage())
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
                    Text(category.title())
                        .font(.custom("Times-Roman", size: 40))
                        .fontWeight(.bold)
                    Text(category.title())
                        .font(.headline)
                }
                .padding(.top, 200)
                .foregroundColor(Color.MyTheme.DarkGray)
                
                TextField(category.subtitle(), text: $resultText)
                    .frame(height: 40)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
                    .shadow(radius: 5)
                    .foregroundColor(Color.MyTheme.DarkGray)
                
                WoopSubViews(category: category)
                    .padding(.top, 50)

                
                Spacer()
                
                if resultText != "" {
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
}

struct WoopContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
//            WoopContentView(topImage: "wish", title: "Wish", subtitle: "あなたが身につけたい習慣目標は？", textField: "add your wish")
            WoopContentView(category: .Wish)
        }
    }
}
