//
//  Collision.swift
//  GameHW
//
//  Created by Raaziq Brown on 2/23/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI
import AVFoundation

struct Collision: View {
    
    var position: CGPoint
    var bubPosition: CGPoint
    var position2: CGPoint
    var position3: CGPoint
    @State var player : AVAudioPlayer?
    @State var isPlaying : Bool = false
    
    
    let size: CGFloat = 150
    
    func bubInside() -> Bool{
        
        print(position)
        
        if (position.x - size / 2.0) < bubPosition.x && bubPosition.x < (position.x + size / 2.0) &&
            (position.y - size / 2.0) < bubPosition.y && bubPosition.y < (position.y + size / 2.0) {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            return true
        } else {
            return false
        }
    }
    
    func bubInsideX() -> Bool{
        
        print(position2)
        
 

        if (position2.x - size / 2.0) < bubPosition.x && bubPosition.x < (position2.x + size / 2.0) &&
            (position2.y - size / 2.0) < bubPosition.y && bubPosition.y < (position2.y + size / 2.0) {
            
            self.isPlaying.toggle()
           Sounds2.playSounds2(soundfile: "Ding.mp3")
            
    return true
                   
        } else {
            return false
        }
    }
    
    func bubInsideX2() -> Bool{
        
        print(position2)
        
           
        
        if (position3.x - size / 2.0) < bubPosition.x && bubPosition.x < (position3.x + size / 2.0) &&
            (position3.y - size / 2.0) < bubPosition.y && bubPosition.y < (position3.y + size / 2.0) {
          AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            
            return true
            
        } else {
            return false
        }
    }
    
    
    
    var body: some View {
        
        ZStack{
            Circle()
                .frame(width: size, height: size)
                
                .foregroundColor(bubInsideX() ? Color.green : Color.gray)
              
            
            
            if bubInside() == true{
                Circle()
                    .frame(width: size, height: size)
                    
                    
                    .foregroundColor(bubInside() ? Color.red : Color.gray)
                
                
            }
            
            if bubInsideX2() == true{
                VStack{
                Circle()
                    .frame(width: size, height: size)
                    
                    
                    .foregroundColor(bubInsideX2() ? Color.red : Color.gray)
                    
                
                }
               
                
            }
        }
          
        .animation(.spring())
        .position(bubPosition)
        .background(bubInsideX2() || bubInside() ? Color.red : Color.white)
     
        
    }
    
}

struct Collision_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            Collision(position: CGPoint(x: 0, y: 0), bubPosition: CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2 ), position2: CGPoint(x: 0, y: 0), position3: CGPoint(x: 0, y: 0))
            
        }
    }
}
