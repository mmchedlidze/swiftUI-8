//
//  ContentView.swift
//  animation
//
//  Created by Mariam Mchedlidze on 24.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var zoomed = false

    var body: some View {
        Text("TBC IT Academy")
            .font(.title)
            .foregroundColor(zoomed ? .red : .blue)
            .scaleEffect(zoomed ? 1.5 : 1.0)
            .onAppear() {
                withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                    self.zoomed.toggle()
                }
            }
    }
}

struct ContentViewPreview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
