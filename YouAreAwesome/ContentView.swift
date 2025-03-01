//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Linda Samsinger on 16.02.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var image = ""
    
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundColor(.black)
            
            Spacer()
            
            
            Button("Press Me") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
                // ternary operator
                message = (message==message1 ? message2 : message1)
                image = (image=="hand.thumbsup" ?"sun.max.fill": "hand.thumbsup")
                
                // if-else operator 
//                if message == message1 {
//                    message = message2
//                    image = "sun.max.fill"
//                } else {
//                    message = message1
//                    image = "hand.thumbsup"
//                }
                
                
            }
            
            
            
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        // New stuff here.
        .padding()
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
