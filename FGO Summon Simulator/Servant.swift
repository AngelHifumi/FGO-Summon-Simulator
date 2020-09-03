//
//  Servant.swift
//  FGO Summon Simulator
//
//  Created by Run Elsij on 30.08.20.
//  Copyright © 2020 Starlight. All rights reserved.
//

import Foundation
import UIKit
class Servant: NSObject{
    
    var name: String = ""
    var rarity: Int = 1
    var amount: Int = 0
    var class_: String = ""
    override init() {
    }
    init(name: String, rarity: Int, amount: Int, class_: String) {
        self.name = name
        self.rarity = rarity
        self.amount = amount
        self.class_ = class_
    }
    func getName() -> String {
        return name
    }
    func getRarity() -> Int {
        return rarity
    }
    func getAmount() -> Int{
        return amount
    }
    func getClass() -> String {
        return class_
    }
    static func funkymonkey(){
        print("Funky Monky")
    }
    
}
