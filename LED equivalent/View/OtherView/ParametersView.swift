//
//  ParametersView.swift
//  LED equivalent
//
//  Created by Тимофей Шкабров on 12/06/2024.
//

import SwiftUI

struct ParametersView: View {
    
    var parametersTitle: String
    var parametersValue: String
    var parametersColor: Color
    
    var body: some View {
        Text(parametersTitle)
            .font(.callout)
            .padding(.horizontal)
            .padding(.bottom, 8)
        
        Text(parametersValue)
            .font(.title)
            .foregroundColor(parametersColor)
            .padding(.horizontal)
            .padding(.bottom, 16)
    }
}

#Preview {
    ParametersView(parametersTitle: "LED lamp", parametersValue: "20 Wt", parametersColor: .green)
}
