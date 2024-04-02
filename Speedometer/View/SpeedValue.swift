//
//  SpeedValue.swift
//  Speedometer
//
//  Created by Matsulenko on 27.03.2024.
//

import SwiftUI

struct SpeedValue: View {
    @Binding var isMph: Bool
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        Text(String(getSpeed()))
            .font(.system(size: 200))
            .lineLimit(0)
            .minimumScaleFactor(0.1)
    }
    
    func getSpeed() -> String {
        let speed = {
            if isMph {
                locationManager.speed * 2.23694
            } else {
                locationManager.speed * 3.6
            }
        }()
        
        if speed >= 0 {
            return String(Int(speed))
        } else {
            return "0"
        }
    }
}

#Preview {
    SpeedValue(isMph: .constant(false))
}
