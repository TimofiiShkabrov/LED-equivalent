//
//  SettingsView.swift
//  LED equivalent
//
//  Created by Тимофей Шкабров on 12/06/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State var viewModel = SettingsViewModel()
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 2)
                .frame(width: 80, height: 4)
                .foregroundColor(.gray)
                .padding(.top, 8)
            
            Text("Settings")
                .font(.title)
                .padding(.top, 16)
            
            Text("Customize the display to match the lamp power using these settings")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.top, 8)
            
            Toggle("Show Luminescent", isOn: $viewModel.showLuminescent)
                .padding()
            
            Toggle("Show Light Flow", isOn: $viewModel.showLightFlow)
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    SettingsView()
}
