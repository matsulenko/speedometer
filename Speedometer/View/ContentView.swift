//
//  ContentView.swift
//  Speedometer
//
//  Created by Matsulenko on 26.03.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isMirror") var isMirror = false
    
    var imageName: String {
        if isMirror {
            "rectangle.righthalf.inset.filled.arrow.right"
        } else {
            "rectangle.lefthalf.inset.filled.arrow.left"
        }
    }
    
    var body: some View {
        ZStack {
            SpeedometerView()
                .scaleEffect(x: isMirror ? -1 : 1, y: 1)
            VStack {
                Spacer()
                HStack {
                    Image(systemName: imageName)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.gray)
                        .onTapGesture {
                            isMirror.toggle()
                        }
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
