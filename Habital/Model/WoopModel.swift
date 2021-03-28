//
//  WoopModel.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/23.
//

import Foundation
import SwiftUI

struct WoopModel: Identifiable, Hashable {
    
    var id = UUID()
    var wish:String
    var outcomes:[String]
    var obstacles:[String]
    var plans:[String]
    
    func hash(into hasher: inout Hasher){
        hasher.combine(id)
    }
    
}
