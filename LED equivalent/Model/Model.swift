//
//  Model.swift
//  LED equivalent
//
//  Created by Тимофей Шкабров on 12/06/2024.
//

import Foundation

struct Lamp: Codable {
    let filamentPower: String
    let luminescentPower: String
    let ledPower: String
    let loghtFlow: String
}

var lamps: [Lamp] {
    let lamp0 = Lamp(
        filamentPower: "20 Wt",
        luminescentPower: "5-7 Wt",
        ledPower: "2-3 Wt",
        loghtFlow: "~250 Lm"
    )
    let lamp1 = Lamp(
        filamentPower: "40 Wt",
        luminescentPower: "10-13 Wt",
        ledPower: "4-5 Wt",
        loghtFlow: "~400 Lm"
    )
    let lamp2 = Lamp(
        filamentPower: "60 Wt",
        luminescentPower: "15-16 Wt",
        ledPower: "8-10 Wt",
        loghtFlow: "~700 Lm"
    )
    let lamp3 = Lamp(
        filamentPower: "75 Wt",
        luminescentPower: "18-20 Wt",
        ledPower: "10-12 Wt",
        loghtFlow: "~900 Lm"
    )
    let lamp4 = Lamp(
        filamentPower: "100 Wt",
        luminescentPower: "25-30 Wt",
        ledPower: "12-15 Wt",
        loghtFlow: "~1200 Lm"
    )
    let lamp5 = Lamp(
        filamentPower: "150 Wt",
        luminescentPower: "40-50 Wt",
        ledPower: "18-20 Wt",
        loghtFlow: "~1800 Lm"
    )
    let lamp6 = Lamp(
        filamentPower: "200 Wt",
        luminescentPower: "60-80 Wt",
        ledPower: "25-30 Wt",
        loghtFlow: "~2500 Lm"
    )
    
    return [lamp0, lamp1, lamp2, lamp3, lamp4, lamp5, lamp6]
}
