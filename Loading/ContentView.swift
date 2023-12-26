//
//  ContentView.swift
//  Loading
//
//  Created by eyh.mac on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
 @State private var isRotating = false
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(AngularGradient(gradient: Gradient(colors: [.white, .white]), center: .center), lineWidth: 5)
            .frame(width: 50, height: 50)
            .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: isRotating)
            .onAppear() {
                self.isRotating = true
            }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
