//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Linda Samsinger on 16.02.25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var soundName = ""
    @State private var lastImageNumber = -1 // if you put 0, 0 will never be shown at the first time, but we want to potentially show te first time
    @State private var audioPlayer: AVAudioPlayer!
    @State private var lastMessageNumber = -1
    @State private var lastSoundNumber = -1
    
    let numberOfImages = 10
    let numberOfSounds = 6
    
    var body: some View {
        
        
        VStack {
            
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.50) // shrink text that is too long, so it is still readable
                .frame(height: 130) // fixed height for text view
            
                .animation(.easeInOut(duration: 0.15), value: message) // best animation
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
           
            
            
            Spacer()
            
            // with randomization, repeats are displayed, but we do not want repeats
            
            Button("Press Me") {
                let messages = ["You Are Awesome",
                                "Gadzook my friend! I am astonished at how utterly magnificent you are!", "When the Genius Bar Needs Help, They Call You!", "You Are Great", "Fabulous? That's You!", "Hey You!", "You Are Amazing"]
                // ternary operator
                //                message = (message == message1 ? message2 : message1)
                //                imageName = (imageName == "image0" ? "image1" : "image0")
                
                //TODO: - Update the imageName variable -
                // todo, fixme, mark all caps with colon and space, even more prominently -dashes add lines-
                // breadcrumb trail is the file structure with a jump bar
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0...(numberOfImages-1))
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                var messageNumber: Int
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                //                messageNumber += 1
                //                imageNumber += 1
                //
                //                if messageNumber == messages.count {
                //                    messageNumber = 0
                //                }
                
                //                if imageNumber > 9 {
                //                    imageNumber = 0
                //                }
                
                print(imageNumber)
                // if-else operator
                //                if message == message1 {
                //                    message = message2
                //                    image = "sun.max.fill"
                //                } else {
                //                    message = message1
                //                    image = "hand.thumbsup"
                //                }
                
                var soundNumber: Int
                repeat {
                    soundNumber = Int.random(in: 0...(numberOfSounds-1))
                } while soundNumber == lastSoundNumber
                soundName = "sound\(soundNumber)"
                lastSoundNumber = soundNumber
                
                // guard let for variables
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😡 Error loading \(soundName) creating sound")
                    return
                }
                // do-try-catch if an object throws an error
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("😡 Error \(error.localizedDescription) from creating the Audio Player")
                }
                
                
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
