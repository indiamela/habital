//
//  WishSubView.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/28.
//

import SwiftUI

struct ObstacleSubView: View {
    @State var resultText = ""
    @State var countMax = false
    @State var textArray:[String] = []
    var userDefaults = UserDefaults.standard

    var body: some View {
        VStack{
            VStack(alignment: .center, spacing: 20) {
                Text(Woop.Category.Obstacle.title())
                    .font(.custom("Times-Roman", size: 40))
                    .fontWeight(.bold)
                Text(Woop.Category.Obstacle.subtitle())
                    .font(.headline)
            }
            .padding(.top, 150)
            .foregroundColor(Color.MyTheme.DarkGray)
            
            HStack{
                TextField(Woop.Category.Obstacle.textField(), text: $resultText)
                    .frame(height: 40)
                    .background(Color.white)
                    .cornerRadius(10)
                    .foregroundColor(Color.MyTheme.DarkGray)
                Button(action: {
                    addText()
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.MyTheme.DarkGray)

                })
                .padding(.all, 6)

            }
            .padding(.top, 20)
            .shadow(radius: 5)
            
            if countMax {
                Text("※追加できるのは5つまでです")
                    .foregroundColor(.red)
                    .font(.callout)
            }

            List{
                ForEach(textArray, id: \.self){ text in
                    Text(text)
                }.onDelete(perform: { indexSet in
                    textArray.remove(atOffsets: indexSet)
                })
            }
            .frame(height:200, alignment: .leading)
            .cornerRadius(30)
            .shadow(radius: 12)
            .opacity(0.7)
            .padding(.top, 30)
            
            Spacer()
            
            if textArray.count != 0 {
                VStack{
                    NavigationLink(destination: WoopContentView(category: Woop.Category.Plan)){
                        Text("next".uppercased())
                            .foregroundColor(Color.MyTheme.DarkGray)
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth:.infinity)
                            .frame(height: 60)
                            .onTapGesture(perform: saveArray)
                    }
                    .background(LinearGradient.MyTheme.gradientPink)
                    .cornerRadius(60)
                    .shadow(radius: 12)
                }
            }
        }
    }
    
    func addText(){
        if textArray.count < 5{
            guard !resultText.isEmpty else { return }
            textArray.append(resultText)
            resultText = ""
        }else{
            countMax = true
        }
    }
    
    func saveArray(){
        guard !textArray.isEmpty else { return }
        userDefaults.setValue(textArray, forKey: "obstacle")
    }

}

struct ObstacleSubView_Previews: PreviewProvider {
    static var previews: some View {
        ObstacleSubView()
            .previewLayout(.sizeThatFits)
    }
}
