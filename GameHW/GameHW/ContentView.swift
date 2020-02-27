//
//  ContentView.swift
//  GameHW
//
//  Created by Raaziq Brown on 2/20/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI
import AVKit

struct ContentView: View {

    
    @State var bubPosition = CGPoint(x: 190, y: 400)
    @State var bubPosition2 = CGPoint(x: 310, y: 480)
     @State var bubPosition3 = CGPoint(x: 70, y: 480)
    @State var time: CGFloat=0
    @State var player : AVAudioPlayer?
    @State var isPlaying : Bool = false
    
  
    
    var body: some View {
        

            
            
        GeometryReader{ geometry in
            
            
            ZStack{
                
                GameScreen(bubPosition: self.$bubPosition, bubPosition2: self.$bubPosition2, bubPosition3: self.$bubPosition3)
                
                
                
                VStack{
                    
                    
                    Image("Get-Hip-Logo").resizable()
                        .frame(width: CGFloat(120), height: CGFloat(120))
                    
                    Button(action: {
                        
                     self.isPlaying.toggle()
                     Sounds.playSounds(soundfile: "HovSnippet.mp3")
                        
                        
                        print("button pressed")
                    }) {
                        Image("PlayButt").resizable()
                            .frame(width: CGFloat(130), height: CGFloat(130))}
                        .offset(x: 0, y: 0)
                        .buttonStyle(PlainButtonStyle())
                    
                    
                  
                   
               
                    Spacer()
                    
                    
                    Spacer()
                    Spacer()
                    
                    
                }
        
//                .onAppear() {
//                               // Initialize position to center of the screen.
//                               self.bubPosition = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
//                           }
            }
            
           
            }
            
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
