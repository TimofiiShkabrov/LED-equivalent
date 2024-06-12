//
//  MainViewModel.swift
//  LED equivalent
//
//  Created by Тимофей Шкабров on 12/06/2024.
//

import Foundation
import Observation

@Observable
class MainViewModel {
    
    var lampPicker = "20 Wt"
    var lampPowers: [String] {
        lamps.compactMap {$0.filamentPower
        }
    }
    
    func ledPower(_ lampPower: String) -> String {
        lumpWithPower(lampPower)?.ledPower ?? "Not found"
    }
    
    func luminescentPower(_ lampPower: String) -> String {
        lumpWithPower(lampPower)?.luminescentPower ?? "Not found"
    }
    
    func lightFlow(_ lampPower: String) -> String {
        lumpWithPower(lampPower)?.loghtFlow ?? "Not found"
    }
    
    private func lumpWithPower(_ power: String) -> Lamp? {
        lamps.first { $0.filamentPower == power }
    }
}
