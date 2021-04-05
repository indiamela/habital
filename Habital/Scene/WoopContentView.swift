//
//  WishView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct WoopContentView: View {
    
    @State var resultText = ""
    var category: Woop.Category
    
    var body: some View {
        ZStack{
            VStack{
                Image(category.topImage())
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height/2, alignment: .leading)
                Rectangle()
                    .fill(Color.MyTheme.Orange)
            }
            .edgesIgnoringSafeArea(.all)

            VStack{
                Rectangle()
                    .fill(LinearGradient.MyTheme.gradientBackGroundOrange)
                    .frame(height:UIScreen.main.bounds.height/2 + 10)
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)

            VStack{
                VStack(alignment: .center, spacing: 20) {
                    Text(category.title())
                        .font(.custom("Times-Roman", size: 40))
                        .fontWeight(.bold)
                    Text(category.subtitle())
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
                
                switch category{
                case .Wish:
                    WishSubView()
                        .padding(.top, 50)
                case .Outcome:
                    OutcomeSubView()
                        .padding(.top, 50)
                case .Obstacle:
                    ObstacleSubView()
                        .padding(.top, 50)
                case .Plan:
                    PlanSubView()
                        .padding(.top, 50)
                }


                
                Spacer()
                
                if resultText != "" {
                    if category == .Plan{
                        NavigationLink(
                            destination:
                                ConfirmView(),
                            label: {
                                Text("next".uppercased())
                                    .foregroundColor(Color.MyTheme.DarkGray)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .frame(maxWidth:.infinity)
                                    .frame(height: 60)
                            }
                        )
                    }else{
                        NavigationLink(
                        destination:
                            WoopContentView(category: nextCategory(categoty: category)!),
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
            .padding(.horizontal,50)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func nextCategory(categoty: Woop.Category?)->Woop.Category?{
        if category == .Wish{
            return .Outcome
        }else if category == .Outcome{
            return .Obstacle
        }else {
            return .Plan
        }
    }
}

struct WoopContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
                WoopContentView(category: .Wish)
                WoopContentView(category: .Outcome)
                WoopContentView(category: .Obstacle)
                WoopContentView(category: .Plan)

        }
    }
}
