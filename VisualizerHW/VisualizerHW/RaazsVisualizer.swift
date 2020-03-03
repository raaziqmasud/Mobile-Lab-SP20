//
//  RaazsVisualizer.swift
//  VisualizerHW
//
//  Created by Raaziq Brown on 3/3/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct RaazsVisualizer: View {
    
    @Binding var signal: Signal
    @Binding var viz: Viz
    
    
    
    var body: some View {
        
        
        
        ZStack{
            HStack{
                VStack{
                    
                    RoundedRectangle(cornerRadius: CGFloat(10))
                        .fill(Color.black)
                        .frame(width: CGFloat(50), height:CGFloat(50))
                        .rotationEffect(self.viz.boxOneOpac ? .degrees(360) : .degrees(0))
                        .opacity(self.viz.boxOneOpac ? 2 : 0.1)
                }
                
                VStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow)
                        .frame(width: 50, height:50)
                        .opacity(self.signal.toggleValue2 ? 2 : 1.0)
                    
                    
                }
            }
            if self.signal.toggleValue == true{
                              
                              ForEach(0..<self.signal.intValue, id: \.self) { _ in
                                  Circle()
                                  .fill(Color.blue)
                                  .frame(width: 100, height: 100)
                              }

                          }
        }
    }
}

//struct RaazsVisualizer_Previews: PreviewProvider {
//    static var previews: some View {
//        RaazsVisualizer()
//    }
//}
