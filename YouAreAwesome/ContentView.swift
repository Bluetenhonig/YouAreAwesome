//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Linda Samsinger on 16.02.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
             
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
            
            Spacer()
            
            
            Button("Press Me") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
                // ternary operator
                message = (message == message1 ? message2 : message1)
                imageName = (imageName == "image0" ? "image1" : "image0")
                
                //TODO: - Update the imageName variable -
                // todo, fixme, mark, -dashes add lines-
                
                imageName = "image\(imageNumber)"
                
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                
                print(imageNumber)
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
