//
//  WishView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct OutcomeView: View {

    @State var outcomeText: String = ""

    var outcomeList:[String] = []

    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        
            ZStack{
                VStack{
                    Image("outcome")
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height/2.5, alignment: .leading)
                        .offset(x: 0, y: -20)
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
                
//                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack{
                        VStack(alignment: .center, spacing: 20) {
                            Text("Outcome")
                                .font(.custom("Times-Roman", size: 40))
                                .fontWeight(.bold)
                            Text("その習慣であなたの将来はどう変わる？")
                                .font(.headline)
                        }
                        .foregroundColor(Color.MyTheme.DarkGray)
                        .padding(.top, 200)

                        
//                        HStack(alignment: .center, spacing: 10, content: {
//                            TextField("しなやかな身体になる", text: $outcomeText)
//                                .textFieldStyle(RoundedBorderTextFieldStyle())
//                            Button(action: {}) {
//                                Image(systemName: "plus.circle.fill")
//                            }
//                            Button(action: {}) {
//                                Image(systemName: "minus.circle.fill")
//                                    .foregroundColor(.red)
//                            }
//                        })
                        
                        
                        Spacer()

                        NavigationLink(
                            destination: ObstacleView(),
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
//                })
                .padding(.horizontal,50)
            }
    }
}

struct OutcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            OutcomeView()
        }
    }
}
