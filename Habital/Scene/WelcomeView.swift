//
//  WelcomeView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/17.
//

import SwiftUI

struct WelcomeView: View {

    let maxCount = 5
    @State var selection: Int = 0
    @State var timerAdded: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                TabView(selection: $selection,
                        content:  {
                            ForEach(0..<maxCount){ count in
                                Image("start\(count)")
                                    .resizable()
                                    .scaledToFill()
                                    .edgesIgnoringSafeArea(.all)

                            }
                        })
                    .animation(.default)
                    .onAppear(perform: {
                        if !timerAdded {
                            addTimer()
                        }
                    })
                
//                VStack{
//                    Spacer()
//                    NavigationLink(
//                        destination: WishView(),
//                        label: {
//                            Text("Navigate")
//                                .foregroundColor(Color.MyTheme.DarkGray)
//                                .font(.headline)
//                                .fontWeight(.bold)
//                                .frame(maxWidth:.infinity)
//                                .frame(height: 60)
//                        }
//                    )
//                    .background(Color.MyTheme.Orange)
//                    .cornerRadius(60)
//                    .shadow(radius: 12)
//                    .padding(.horizontal,50)
//                }
            }
        }
    }
    
    func addTimer(){
        
        timerAdded = true
        //3秒ごとに変わる
        let timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) {
            (timer) in
            
            if selection == maxCount-1{
                selection = 0
            }else{
                selection += 1
            }
        }
        timer.fire()
    }
}



struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
