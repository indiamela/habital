//
//  WoopEntity.swift
//  Habital
//
//  Created by Taishi Kusunose on 2021/03/28.
//

import Foundation
import CoreData
import SwiftUI
//
//@objc(WoopEntity)
//public class WoopEntity: NSManagedObject {
//
//}


extension Woop{
    
    enum Category: Int16 {
        case Wish
        case Outcome
        case Obstacle
        case Plan
        
        func topImage() -> String {
            switch self {
            case .Wish:
                return "wish"
            case .Outcome:
                return "outcome"
            case .Obstacle:
                return "obstacle"
            case .Plan:
                return "plan"
            }
        }
        
        func title() -> String {
            switch self {
            case .Wish:
                return "Wish"
            case .Outcome:
                return "Outcome"
            case .Obstacle:
                return "Obstacle"
            case .Plan:
                return "Plan"
            }
        }
        
        func subtitle() -> String {
            switch self {
            case .Wish:
                return "あなたが身につけたい習慣目標は？"
            case .Outcome:
                return "その習慣を続けたらどんな自分に生まれ変わりますか？"
            case .Obstacle:
                return "あなたの行動を妨げることが起きるとしたら何がありますか？"
            case .Plan:
                return "その障害が起きたとき、どうすれば乗り越えられますか？"
            }
        }
        
        func textField() -> String {
            switch self {
            case .Wish:
                return "add your wish"
            case .Outcome:
                return "add your outcome"
            case .Obstacle:
                return "add your obstacle"
            case .Plan:
                return "add your plan"
            }
        }
    }
}
