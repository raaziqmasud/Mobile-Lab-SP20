//

//  GameHW
//
//  Created by Raaziq Brown on 2/23/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct BubThree: View {
    
    @Binding var position3: CGPoint
    @State private var dragOffset3 = CGPoint()
    
    var body: some View {
        
        let drag = DragGesture(minimumDistance: 0.0, coordinateSpace: CoordinateSpace.global)
            .onChanged { gesture in
                
                self.position3 = CGPoint(x: self.dragOffset3.x + gesture.translation.width, y: self.dragOffset3.y + gesture.translation.height)
                
        }
            
        .onEnded { gesture in
            
            self.dragOffset3 = self.position3}
            
            return ZStack{
                
                
                
                Image("wizbub ").resizable()
                    .frame(width: 115, height: 115)
                    .position(position3)
                    .animation(.easeInOut)
                    .animation(.easeInOut(duration: 0.2))
                    .gesture(drag)
                    .onAppear() {
                        // Initialize offset on appear.
                        self.dragOffset3 = self.position3
                }
                
            }
        
    }}
            
            
            struct BubThree_Previews: PreviewProvider {
                static var previews: some View {
                      GeometryReader { geometry in
                        
                        BubThree(position3: .constant(CGPoint(x: geometry.size.width / 2 - 100, y:  geometry.size.height / 2)))
                    } }
}
