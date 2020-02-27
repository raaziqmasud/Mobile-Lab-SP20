//
//  GameScreen.swift
//  GameHW
//
//  Created by Raaziq Brown on 2/23/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI


struct GameScreen: View {

   @Binding var bubPosition: CGPoint
  @Binding var bubPosition2: CGPoint
     @Binding var bubPosition3: CGPoint
    
    var body: some View {
        GeometryReader { geometry in
        ZStack{
            
            Color.white
                .edgesIgnoringSafeArea(.all)
//            Collision(position: CGPoint(x:geometry.size.width / 2, y: 700))
  
            Collision(position: self.bubPosition , bubPosition: CGPoint(x: geometry.size.width/2, y: CGFloat(600)), position2: self.bubPosition2, position3: self.bubPosition3)
            
            // Place avatar.
            BubOne(position: self.$bubPosition)
            BubTwo(position2: self.$bubPosition2)
             BubThree(position3: self.$bubPosition3)
        }
        
    }}
}

struct GameScreen_Previews: PreviewProvider {
    static var previews: some View {
   
       GeometryReader { geometry in
        GameScreen(bubPosition: .constant(CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)), bubPosition2: .constant(CGPoint(x: geometry.size.width / 2 + 100, y: geometry.size.height / 2)), bubPosition3: .constant(CGPoint(x: geometry.size.width / 2 - 100, y: geometry.size.height / 2)))
        
               }
    }
}
