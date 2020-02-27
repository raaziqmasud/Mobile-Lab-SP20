//
//  Movable.swift
//  GameHW
//
//  Created by Raaziq Brown on 2/20/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import Foundation
import SwiftUI

struct Movable: View {
    
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero
    
    @GestureState private var dragOffset1 = CGSize.zero
    @State private var position1 = CGSize.zero
    
    @GestureState private var dragOffset2 = CGSize.zero
    @State private var position2 = CGSize.zero
    
    var body: some View {
        VStack{
            
            HStack{
                
                Image("waynebub").resizable()
                    .frame(width: 125, height: 125)
                    .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
                    .animation(.easeInOut)
                    
                    .gesture(
                        DragGesture()
                            .updating($dragOffset, body: { (value, state, transaction) in
                                
                                state = value.translation
                            })
                            .onEnded({ (value) in
                                self.position.height += value.translation.height
                                self.position.width += value.translation.width
                            })
                )
                
                Image("hovbub").resizable()
                    .frame(width: 125, height: 125)
                    .offset(x: position1.width + dragOffset1.width, y: position1.height + dragOffset1.height)
                    .animation(.easeInOut)
                    .gesture(
                        DragGesture()
                            .updating($dragOffset1, body: {
                                (value, state, transaction)
                                in state = value.translation
                            })
                            .onEnded({ (value) in
                                self.position1.height +=
                                    value.translation.height
                                self.position1.width +=
                                    value.translation.width
                                
                            })
                )
                
                Image("wizbub ").resizable()
                    .frame(width: 125, height: 125)
                    .offset(x: position2.width + dragOffset2.width, y: position2.height + dragOffset2.height)
                    .animation(.easeInOut)
                    .gesture(
                        DragGesture()
                            .updating($dragOffset2, body: {
                                (value, state, transaction)
                                in state = value.translation
                            })
                            .onEnded({ (value) in
                                self.position2.height +=
                                    value.translation.height
                                self.position2.width +=
                                    value.translation.width
                                
                            })
                )
                
                
            }
            .border(Color.green, width: 5)
        }}
    struct ControllerButtons_Previews: PreviewProvider {
        static var previews: some View {
            Movable()
        }
    }
}

