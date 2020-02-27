//
//  BubOne.swift
//  GameHW
//
//  Created by Raaziq Brown on 2/23/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct BubTwo: View {
    
    @Binding var position2: CGPoint
    @State private var dragOffset2 = CGPoint()
    
    var body: some View {
        
        let drag = DragGesture(minimumDistance: 0.0, coordinateSpace: CoordinateSpace.global)
            .onChanged { gesture in
                
                self.position2 = CGPoint(x: self.dragOffset2.x + gesture.translation.width, y: self.dragOffset2.y + gesture.translation.height)
                
        }
            
        .onEnded { gesture in
            
            self.dragOffset2 = self.position2}
            
            return ZStack{
                
                
                
                Image("hovbub").resizable()
                    .frame(width: 115, height: 115)
                    .position(position2)
                    .animation(.easeInOut)
                    .animation(.easeInOut(duration: 0.2))
                    .gesture(drag)
                    .onAppear() {
                        // Initialize offset on appear.
                        self.dragOffset2 = self.position2
                }
                
            }
        
    }}
            
            
            struct BubTwo_Previews: PreviewProvider {
                static var previews: some View {
                      GeometryReader { geometry in
                        
                        BubTwo(position2: .constant(CGPoint(x: geometry.size.width / 2 + 100, y:  geometry.size.height / 2)))
                    } }
}
