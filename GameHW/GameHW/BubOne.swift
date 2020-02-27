//
//  BubOne.swift
//  GameHW
//
//  Created by Raaziq Brown on 2/23/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct BubOne: View {
    
    @Binding var position: CGPoint
    @State private var dragOffset = CGPoint()
    
    var body: some View {
        
        let drag = DragGesture(minimumDistance: 0.0, coordinateSpace: CoordinateSpace.global)
            .onChanged { gesture in
                
                self.position = CGPoint(x: self.dragOffset.x + gesture.translation.width, y: self.dragOffset.y + gesture.translation.height)
                
        }
            
        .onEnded { gesture in
            
            self.dragOffset = self.position}
        

            
            return ZStack{
                
                
                
                Image("waynebub").resizable()
                    .frame(width: 115, height: 115)
                    .position(position)
                    .animation(.easeInOut)
                    .animation(.easeInOut(duration: 0.2))
                    .gesture(drag)
                    .onAppear() {
                        // Initialize offset on appear.
                        self.dragOffset = self.position
                }
                
            }
        
    }}
            
            
            struct BubOne_Previews: PreviewProvider {
                static var previews: some View {
                      GeometryReader { geometry in
                        
                        BubOne(position: .constant(CGPoint(x: geometry.size.width / 2, y:  geometry.size.height / 2)))
                    } }
}
