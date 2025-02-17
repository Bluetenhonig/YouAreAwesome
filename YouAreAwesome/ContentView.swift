//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Linda Samsinger on 16.02.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "I Am A Programmer!"
    
    var body: some View {
       
        
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundColor(.black)
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    message = "Awesome!"
                    print(message)
                }
              
                
                
                Button("Great") {
                    message = "Great!"
                    print(message)
                }
                
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
