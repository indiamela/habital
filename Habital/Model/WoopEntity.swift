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
                return "あなたが身につけたい習慣は？"
            case .Outcome:
                return "その習慣を続けたらどんな自分に生まれ変わりますか？"
            case .Obstacle:
                return "達成する際にどんなトラブルが発生しそうですか？"
            case .Plan:
                return "そのトラブルはどうすれば乗り越えられますか？"
            }
        }
        
        func textField() -> String {
            switch self {
            case .Wish:
                return "毎朝20分間、勉強をする"
            case .Outcome:
                return "仕事の成果が認められて1年後に年収アップ！"
            case .Obstacle:
                return "寝坊をしてしまってやる気がなくなる"
            case .Plan:
                return "少なくとも5分間だけやる！毎晩10時には必ず寝る！"
            }
        }
    }
}
