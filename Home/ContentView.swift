//
//  ContentView.swift
//  Home
//
//  Created by Benjamin Lavallee on 2024-01-12.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    let firstGradientColors = Gradient(colors: [Color.lightBlue, Color.mediumBlue, Color.darkerBlue, Color.deepBlue, Color.gray, Color.darkYellow])
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            
            //Background
            LinearGradient(
                gradient: firstGradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
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
