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
    @ObservedObject var keyboard = KeyboardObserver()
    
    
    var body: some View {
        NavigationView{
            ZStack{
                //                TabView(selection: $selection,
                //                        content:  {
                //                            ForEach(0..<maxCount){ count in
                
                ZStack{
                    Image("start1")
                        .resizable()
                        .scaledToFill()
                    Rectangle()
                        .fill(Color.black)
                        .opacity(0.3)
                }
                .edgesIgnoringSafeArea(.all)

                //
                //                            }
                //                        })
                //                    .animation(.easeIn(duration: 1.0))
                //                    .onAppear(perform: {
                //                        if !timerAdded {
                //                            addTimer()
                //                        }
                //                    })
                
                VStack{
                    Text("Welcome to Habital")
                        .foregroundColor(Color.MyTheme.Orange)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.bottom, 10)
                    Text("Today's action makes your LIFE")
                        .foregroundColor(.white)
                        .font(.footnote)
                    Spacer()
                    NavigationLink(
                        destination: WoopContentView(category: .Wish),
                        label: {
                            Text("start".uppercased())
                                .foregroundColor(Color.MyTheme.DarkGray)
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity)
                                .frame(height: 60)
                        }
                    )
                    .background(LinearGradient.MyTheme.gradientOrange)
                    .cornerRadius(60)
                    .shadow(radius: 12)
                    .padding(.horizontal,50)
                }
            }
        }
        .onAppear{
            keyboard.startObserve()
            UIApplication.shared.closeKeyboard()
        }
        .onDisappear{
            keyboard.stopObserve()
            UIApplication.shared.closeKeyboard()
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
