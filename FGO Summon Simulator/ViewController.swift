//
//  ViewController.swift
//  FGO Summon Simulator
//
//  Created by Run Elsij on 29.08.20.
//  Copyright © 2020 Starlight. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var showServants: UIButton!
    @IBOutlet weak var dolarwasted: UILabel!
    @IBOutlet weak var amountSR: UILabel!
    @IBOutlet weak var amountSSR: UILabel!
    @IBOutlet weak var sqAmount: UITextField!
    @IBOutlet weak var receivedServant:
    UILabel!
    @IBOutlet weak var sqTxt:
    UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func weightedRandomElement<T>(items: [(T, UInt)]) -> T {

        let total = items.map { $0.1 }.reduce(0, +)
    precondition(total > 0, "The sum of the weights must be positive")

    let rand = UInt(arc4random_uniform(UInt32(total)))

    var sum = UInt(0)
    for (element, weight) in items {
        sum += weight
        if rand < sum {
            return element
        }
    }

    fatalError("This should never be reached")
}
    
    class Servant: NSCoder{
        
        var name: String = ""
        var rarity: Int = 1
        var amount: Int = 0
        var class_: String = ""
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
        
    }
    //prolly need a data struc for the lists xd
    var ssrReceived = [Servant]()
    var srReceived = [Servant]()
    var threeStarReceived = [Servant]()
    func getSSRList() -> [Servant]{
        return ssrReceived
    }
    func getSRList() -> [Servant]{
        return srReceived
    }
    func getThreeList() -> [Servant]{
        return threeStarReceived
    }
    let list = [
    Servant(name: "Squirturia",  rarity: 5, amount: 1, class_: "Archer"),
    Servant(name: "Tamamo",  rarity: 5, amount: 1, class_: "Lancer"),
    Servant(name: "Tamamo",  rarity: 5, amount: 1, class_: "Caster"),
    Servant(name: "Jalter",  rarity: 5, amount: 1, class_: "Pog"),
    Servant(name: "Rauikou",  rarity: 5, amount: 1, class_: "Berserker"),
    Servant(name: "Loli Killer",  rarity: 5, amount: 1, class_: "Assassin"),
    Servant(name: "Shishou",  rarity: 5, amount: 1, class_: "Lancer"),
    Servant(name: "Skadi",  rarity: 5, amount: 1, class_: "Caster"),
    Servant(name: "Merlin",  rarity: 5, amount: 1, class_: "Caster"),
    Servant(name: "Salter",  rarity: 4, amount: 1, class_: "Saber"),
    Servant(name: "Tamamo",  rarity: 4, amount: 1, class_: "Lancer"),
    Servant(name: "Tamamo",  rarity: 4, amount: 1, class_: "Berserker"),
    Servant(name: "Jalter",  rarity: 4, amount: 1, class_: "Berserker"),
    Servant(name: "Ushiwakamaru",  rarity: 4, amount: 1, class_: "Assassin"),
    Servant(name: "Marie Antoinette",  rarity: 4, amount: 1, class_: "Caster"),
    Servant(name: "Marie Antoinette",  rarity: 4, amount: 1, class_: "Rider"),
    Servant(name: "Boobie Arturia",  rarity: 4, amount: 1, class_: "Lancer"),
    Servant(name: "Euryle",  rarity: 3, amount: 1, class_: "Archer"),
    Servant(name: "Chu",  rarity: 3, amount: 1, class_: "Lancer"),
    Servant(name: "Kiyohime",  rarity: 3, amount: 1, class_: "Lancer"),
    Servant(name: "Casesar",  rarity: 3, amount: 1, class_: "Saber"),
    Servant(name: "Hans Memerson",  rarity: 3, amount: 1, class_: "Caster"),
    Servant(name: "Gil(Child)",  rarity: 3, amount: 1, class_: "Archer"),
    Servant(name: "Ushiwakamaru",  rarity: 3, amount: 1, class_: "Rider"),
    Servant(name: "David",  rarity: 3, amount: 1, class_: "Archer"),
    ]
    let servSSRList = [
        Servant(name: "Squirturia",  rarity: 5, amount: 1, class_: "Archer"),
        Servant(name: "Tamamo",  rarity: 5, amount: 1, class_: "Lancer"),
        Servant(name: "Tamamo",  rarity: 5, amount: 1, class_: "Caster"),
        Servant(name: "Jalter",  rarity: 5, amount: 1, class_: "Pog"),
        Servant(name: "Rauikou",  rarity: 5, amount: 1, class_: "Berserker"),
        Servant(name: "Loli Killer",  rarity: 5, amount: 1, class_: "Assassin"),
        Servant(name: "Shishou",  rarity: 5, amount: 1, class_: "Lancer"),
        Servant(name: "Skadi",  rarity: 5, amount: 1, class_: "Caster"),
        Servant(name: "Merlin",  rarity: 5, amount: 1, class_: "Caster"),
    ]
    let servSRList = [
        Servant(name: "Salter",  rarity: 4, amount: 1, class_: "Saber"),
        Servant(name: "Tamamo",  rarity: 4, amount: 1, class_: "Lancer"),
        Servant(name: "Tamamo",  rarity: 4, amount: 1, class_: "Berserker"),
        Servant(name: "Jalter",  rarity: 4, amount: 1, class_: "Berserker"),
        Servant(name: "Ushiwakamaru",  rarity: 4, amount: 1, class_: "Assassin"),
        Servant(name: "Marie Antoinette",  rarity: 4, amount: 1, class_: "Caster"),
        Servant(name: "Marie Antoinette",  rarity: 4, amount: 1, class_: "Rider"),
        Servant(name: "Boobie Arturia",  rarity: 4, amount: 1, class_: "Lancer")
    ]
    let servThreeList = [
        Servant(name: "Euryle",  rarity: 3, amount: 1, class_: "Archer"),
        Servant(name: "Chu",  rarity: 3, amount: 1, class_: "Lancer"),
        Servant(name: "Kiyohime",  rarity: 3, amount: 1, class_: "Lancer"),
        Servant(name: "Casesar",  rarity: 3, amount: 1, class_: "Saber"),
        Servant(name: "Hans Memerson",  rarity: 3, amount: 1, class_: "Caster"),
        Servant(name: "Gil(Child)",  rarity: 3, amount: 1, class_: "Archer"),
        Servant(name: "Ushiwakamaru",  rarity: 3, amount: 1, class_: "Rider"),
        Servant(name: "David",  rarity: 3, amount: 1, class_: "Archer"),
        
    ]
    
    var SRamount = 0
    var SSRamount = 0
    var amountOfRollsForSSRleft = 90
    func gacha() -> Servant{
        
        var randomServant:Servant
                
        let randomNumber = Int.random(in: 1...100)
        if amountOfRollsForSSRleft == 1 {
            return pity()
        }
        if randomNumber <= 2{
            randomServant = servSSRList.randomElement()!
            SSRamount = SSRamount + 1
            amountSSR.text = "Amount of SSRs: " + "\(SSRamount)"
            ssrReceived.append(randomServant)
            
        }
        if randomNumber <= 10{
            randomServant = servSRList.randomElement()!
            SRamount = SRamount + 1
            amountSR.text = "Amount of SRs: " + "\(SRamount)"
            srReceived.append(randomServant)
        }
        else{
            randomServant = servThreeList.randomElement()!
            threeStarReceived.append(randomServant)
        }
        
        amountOfRollsForSSRleft -= 1
        print(amountOfRollsForSSRleft)
        return randomServant
        
    }
    func pity () -> Servant{
        var randomServant: Servant
        randomServant = servSSRList.randomElement()!
        SSRamount = SSRamount + 1
        amountSSR.text = "Amount of SSRs: " + "\(SSRamount)"
        ssrReceived.append(randomServant)
        amountOfRollsForSSRleft = 90
        return randomServant
    }
    
    var isEnough = true
    var bucks = 0
    @IBAction func prepareListSSR(_ sender:
           Any) {
        let list = getSSRList()
           performSegue(withIdentifier: "name", sender: self)
       }
    @IBAction func addSQ(_ sender: Any) {
    }
    @IBAction func summon(_ sender: Any) {
        let sq = Int(sqAmount.text!)!
        let servant = gacha()
        if sq <= 0 {
            sqTxt.text = "Not enough sq!"
            isEnough = false
        }
        
        let summon = 3
        let wastedSQ = sq - summon
        sqAmount.text = "\(wastedSQ)"
        //receivedServant.text = gacha().getName()
        receivedServant.text = servant.getName() + " " + servant.getClass()
        bucks = bucks + 3
        dolarwasted.text = "\(bucks)" + "$"
        
    }
    
    
}




