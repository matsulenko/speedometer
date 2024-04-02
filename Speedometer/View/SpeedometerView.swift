//
//  SpeedometerView.swift
//  Speedometer
//
//  Created by Matsulenko on 28.03.2024.
//

import SwiftUI

struct SpeedometerView: View {
    @AppStorage("isMph") var isMph = false
    
    var measurement: String {
        if isMph {
            String(localized: "mph")
        } else {
            String(localized: "kph")
        }
    }
    
    var body: some View {
        VStack {
            SpeedValue(isMph: $isMph)
            Text(measurement)
                .frame(minWidth: 200)
                .font(.title)
                .onTapGesture {
                    isMph.toggle()
                }
            
        }
    }
}

#Preview {
    SpeedometerView()
}
