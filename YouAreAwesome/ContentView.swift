//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jimmy Lin on 9/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                let imageString1 = "hand.thumbsup"
                let imageString2 = "sun.max.fill"
                if message == message1 {
                    message = message2
                    imageString = imageString1
                } else {
                    message = message1
                    imageString = imageString2
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
