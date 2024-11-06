//
//  ContentView.swift
//  PIA13 Swift Uppgift 1
//
//  Created by Malmö Yrkehögskolan on 2024-11-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Full-screen background color
            Color.blue
                .edgesIgnoringSafeArea(.all) // Makes the color fill the entire screen
            
            VStack(spacing: 0) {
                // Top Row (Red, Green, Yellow)
                HStack(alignment: .top, spacing: 0) {
                    Color.red
                        .frame(maxWidth:.infinity,
                               maxHeight: 400)
                        .padding([.top, .leading, .bottom], 3)
                    Color.green
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 3)
                    Color.yellow
                        .frame(maxWidth: .infinity)
                        .padding([.top, .bottom, .trailing], 3)
                }
                .frame(height: 100)
                
                // Gray Rectangle
                Color.gray
                    .frame(height: 90)
                    .padding([.top, .leading, .trailing], 3.0)
                
                // Blue Section with White Square
                ZStack {
                    Color.white
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 422.0)
                }
                .frame(height: 550)
                // Bottom Row (Red background with Black Square on bottom right)
                ZStack(alignment: .bottomTrailing) {
                    Color.red
                    
                    Color.black
                        .frame(width: 50, height: 50)
                        .padding(20)
                }
                .frame(height: 90)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

