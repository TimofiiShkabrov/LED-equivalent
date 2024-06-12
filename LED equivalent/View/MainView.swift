//
//  MainView.swift
//  LED equivalent
//
//  Created by Тимофей Шкабров on 12/06/2024.
//

import SwiftUI

struct MainView: View {
    
    @State var mainViewModel = MainViewModel()
    @State var settingsViewModel: SettingsViewModel
    
    var body: some View {
        VStack {
            Text("Enter incandescent lamp power")
                .font(.title2)
            
            Picker("", selection: $mainViewModel.lampPicker) {
                ForEach(mainViewModel.lampPowers, id: \.self) { power in
                    Text(power)
                        .font(.title2)
                }
            }
            .pickerStyle(.wheel)
            .onChange(of: mainViewModel.lampPicker) { oldValue, newValue in }
            
            Text("Equivalet:")
                .font(.title2)
                .padding()
            
            ParametersView(parametersTitle: "LED lamp", parametersValue: mainViewModel.ledPower(mainViewModel.lampPicker), parametersColor: .blue)
            
            if settingsViewModel.showLuminescent {
                ParametersView(parametersTitle: "Luminescent lamp", parametersValue: mainViewModel.luminescentPower(mainViewModel.lampPicker), parametersColor: .green)
            }
            
            if settingsViewModel.showLightFlow {
                ParametersView(parametersTitle: "Light flow", parametersValue: mainViewModel.lightFlow(mainViewModel.lampPicker), parametersColor: .orange)
            }
            
            Spacer()
            
        }
        .navigationTitle(Text("LED equivalent"))
    }
}

#Preview {
    MainView(settingsViewModel: SettingsViewModel())
}
