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
            
            VStack{
                Spacer()
                List{
                    Section(header: Text("あなたが身につけたい習慣目標は？")){
                        Text("- 毎朝20分、読書する")
                    }
                    Section(header: Text("その習慣を続けたらどんな自分に生まれ変わりますか？")){
                        Text("- 毎朝20分、読書する")
                        Text("- 帰宅後にジムで筋トレする")
                        Text("- 夜寝る前、日記をつける")
                    }
                    Section(header: Text("あなたの行動を妨げることが起きるとしたら何がありますか？")){
                        Text("- 毎朝20分、読書する")
                        Text("- 帰宅後にジムで筋トレする")
                        Text("- 夜寝る前、日記をつける")
                    }
                    Section(header: Text( "その障害が起きたとき、どうすれば乗り越えられますか？")){
                        Text("- 毎朝20分、読書する")
                        Text("- 帰宅後にジムで筋トレする")
                        Text("- 夜寝る前、日記をつける")
                    }
                }
                .frame(height:UIScreen.main.bounds.height/2, alignment: .leading)
                .cornerRadius(30)
                .shadow(radius: 12)
                .opacity(0.7)
                NavigationLink(
                destination:
                    WoopContentView(category: Woop.Category.Wish),
                label: {
                    Text("next".uppercased())
                        .foregroundColor(Color.MyTheme.DarkGray)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity)
                        .frame(height: 60)
                })
                    .background(LinearGradient.MyTheme.gradientOrange)
                    .cornerRadius(60)
                    .shadow(radius: 12)
            }
            .padding(.horizontal,50)
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView()
    }
}
