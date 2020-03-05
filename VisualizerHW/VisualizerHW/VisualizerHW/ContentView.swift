//
//  ContentView.swift
//  VisualizerHW
//
//  Created by Raaziq Brown on 3/3/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct Signal{
    var intValue: Int = 1
    var floatValue: Float = 0
    var toggleValue: Bool = false
    var toggleValue2: Bool = false
    var coolSlide: Double = 100
}


struct ContentView: View {
    
    @State var signal = Signal(intValue: 0, floatValue: 0, toggleValue: false, toggleValue2: false, coolSlide: 0)
    
    
    var body: some View {
        ZStack{
            Color.white
                                                          .edgesIgnoringSafeArea(.all)
        VStack{
            
            
            Spacer()
            Spacer()
            
            RaazsController(signal: $signal)
            
    
            
            RaazsVisualizer(signal: $signal)
            
            Spacer()
            Spacer()
            
            }
        }
        
        
    }
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
