//
//  WishSubView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/28.
//

import SwiftUI

struct OutcomeSubView: View {
    @State var resultText = ""
    @State var woopArray = [WoopModel]()
    @State var textArray:[String] = []

    var body: some View {
        VStack{
            VStack(alignment: .center, spacing: 20) {
                Text(Woop.Category.Outcome.title())
                    .font(.custom("Times-Roman", size: 40))
                    .fontWeight(.bold)
                Text(Woop.Category.Outcome.subtitle())
                    .font(.headline)
            }
            .padding(.top, 100)
            .foregroundColor(Color.MyTheme.DarkGray)
            
            HStack{
                TextField(Woop.Category.Outcome.subtitle(), text: $resultText)
                    .frame(height: 40)
                    .background(Color.white)
                    .cornerRadius(10)
                    .foregroundColor(Color.MyTheme.DarkGray)
                Button(action: {
                    textArray.append(resultText)
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.MyTheme.DarkGray)

                })
                .padding(.all, 6)

            }
            .padding(.top, 20)
            .shadow(radius: 5)

            List{
                ForEach(textArray, id: \.self){ text in
                    Text(text)
                }
            }
            .frame(height:UIScreen.main.bounds.height/3, alignment: .leading)
            .cornerRadius(30)
            .shadow(radius: 12)
            .opacity(0.7)
            .padding(.top, 40)

            
            
            Spacer()
            
            if resultText != "" {
                NavigationLink(
                    destination:
                        WoopContentView(category: Woop.Category.Obstacle),
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
    }
}

struct OutcomeSubView_Previews: PreviewProvider {
    var wishText = "毎朝20分、読書する"
    static var previews: some View {
        OutcomeSubView()
            .previewLayout(.sizeThatFits)
    }
}
