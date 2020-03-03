//
//  ContentView.swift
//  VisualizerHW
//
//  Created by Raaziq Brown on 3/3/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct Signal{
    @State var intValue: Int = 1
    @State var floatValue: Float = 0
    @State var toggleValue: Bool = false
    @State var toggleValue2: Bool = false
    @State var coolSlide: Double = 100
}

struct Viz{
    @State var boxOneMove: Bool = false
    @State var boxTwoMove: Bool = false
    @State var boxOneOpac: Bool = false
    @State var boxTwoOpac: Bool = false
    
}

struct ContentView: View {
    
    @State var signal = Signal(intValue: 0, floatValue: 0, toggleValue: false, toggleValue2: false, coolSlide: 0)
    
    @State var viz = Viz(boxOneMove: false, boxTwoMove: false, boxOneOpac: false, boxTwoOpac: false)
    
    var body: some View {
        
        VStack{
            

            Spacer()
            Spacer()
            
            RaazsController(signal: $signal, viz: $viz)
            
            Spacer()
            
            RaazsVisualizer(signal: $signal, viz: $viz)
            
            Spacer()
            Spacer()
            
         
        }
        
        
    }
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
