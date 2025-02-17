//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Linda Samsinger on 16.02.25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
       
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
            
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
