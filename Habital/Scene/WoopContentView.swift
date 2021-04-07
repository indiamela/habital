//
//  WishView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct WoopContentView: View {
    
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
                switch category{
                case .Wish:
                    WishSubView()
                case .Outcome:
                    OutcomeSubView()
                case .Obstacle:
                    ObstacleSubView()
                case .Plan:
                    PlanSubView()
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
