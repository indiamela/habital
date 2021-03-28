//
//  WoopArrayObject.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/25.
//

import Foundation

class WoopArrayObject: ObservableObject{
    
    @Published var dataArray = [WoopModel]()
    
    init(){
        print("Fetch from DataBase here")
        
        let data1 = WoopModel(wish: "毎朝歩いて出社する", outcomes: ["心身ともに健康的になる","気分が晴れやかになる"], obstacles: ["家をでるのが遅くなる"], plans: ["朝8時には家を出る","少なくともひと駅分は歩く"])
        
        self.dataArray.append(data1)
    }
    init(data: WoopModel){
        self.dataArray.append(data)
    }
}
