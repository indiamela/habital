//
//  WishSubView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/28.
//

import SwiftUI

struct ConfirmView: View {
    @State var resultText = ""
    @State var countMax = false
    @State var woopArray = [WoopModel]()
    @State var textArray:[String] = []

    var body: some View {
        VStack{
            VStack(alignment: .center, spacing: 20) {
                Text("done!!".uppercased())
                    .font(.custom("Times-Roman", size: 40))
                    .fontWeight(.bold)
                Text("さあ、はじめましょう！")
                    .font(.headline)
            }
            .padding(.top, 170)
            .foregroundColor(Color.MyTheme.DarkGray)
            

            
            List{
                Section(header: Text("あなたが身につけたい習慣目標は？")){
                    Text("毎朝20分、読書する")
                }
                Section(header: Text("その習慣を続けたらどんな自分に生まれ変わりますか？")){
                    Text("毎朝20分、読書する")
                    Text("帰宅後にジムで筋トレする")
                    Text("夜寝る前、日記をつける")
                }
                Section(header: Text("あなたの行動を妨げることが起きるとしたら何がありますか？")){
                    Text("毎朝20分、読書する")
                    Text("帰宅後にジムで筋トレする")
                    Text("夜寝る前、日記をつける")
                }
                Section(header: Text( "その障害が起きたとき、どうすれば乗り越えられますか？")){
                    Text("毎朝20分、読書する")
                    Text("帰宅後にジムで筋トレする")
                    Text("夜寝る前、日記をつける")
                }
            }
            .frame(height:350, alignment: .leading)
            .cornerRadius(30)
            .shadow(radius: 12)
            .opacity(0.7)
            .padding(.top, 30)
            
            Spacer()
            
            VStack{
                NavigationLink(
                    destination:
                        WoopContentView(category: Woop.Category.Wish),
                    label: {
                        Text("変更する".uppercased())
                            .foregroundColor(Color.white)
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth:.infinity)
                            .frame(height: 60)
                    })
                    .background(Color.gray)
                    .cornerRadius(60)
                    .shadow(radius: 12)
                NavigationLink(
                    destination:
                        WoopContentView(category: Woop.Category.Wish),
                    label: {
                        Text("start!".uppercased())
                            .foregroundColor(Color.MyTheme.DarkGray)
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth:.infinity)
                            .frame(height: 60)
                    })
                    .background(LinearGradient.MyTheme.gradientOrange)
                    .cornerRadius(60)
                    .shadow(radius: 12)
                    .padding(.top,7)
            }
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView()
    }
}
