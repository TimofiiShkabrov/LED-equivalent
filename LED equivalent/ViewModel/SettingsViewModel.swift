//
//  SettingsViewModel.swift
//  LED equivalent
//
//  Created by Тимофей Шкабров on 12/06/2024.
//

import Foundation
import SwiftUI
import Observation

class SettingsViewModel {
    
    @AppStorage("showLuminescent") var showLuminescent = true
    @AppStorage("showLoghtFlow") var showLightFlow = true
    
}
