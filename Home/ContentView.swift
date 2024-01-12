//
//  ContentView.swift
//  Home
//
//  Created by Benjamin Lavallee on 2024-01-12.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    let firstGradientColors = Gradient(colors: [Color.lightBlue, Color.mediumBlue, Color.darkerBlue, Color.deepBlue, Color.clear])
    let secondGradientColors = Gradient(colors: [Color.darkYellow, Color.darkYellow, Color.gray, Color.darkestBlue, Color.clear])
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            
            //Background
            
            
            //First Gradient
            
            RadialGradient(
                gradient: firstGradientColors,
                center: .topLeading,
                startRadius: 0,
                endRadius: 750
            )
            .ignoresSafeArea()
            
            //Second Gradient
            
            RadialGradient(
                gradient: secondGradientColors,
                center: UnitPoint(x: 1.2, y: 1.1),
                startRadius: 0,
                endRadius: 750
            )
            .ignoresSafeArea()
            
            //Foreground
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
