//
//  RaazsController.swift
//  VisualizerHW
//
//  Created by Raaziq Brown on 3/3/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI



struct RaazsController: View {
    
    //    @State var boxOneMove: Bool = false
    @Binding var signal: Signal
    @Binding var viz: Viz
    
    var body: some View {
        
        
        
        ZStack{
            
            VStack{
                HStack{
                    
                    Button (action:{
                        
                        print("press")
                        if self.signal.toggleValue == false {
                            self.signal.toggleValue = true
                        } else {
                            self.signal.toggleValue = false
                        }
                    }){
                        
                        Circle()
                            .fill(Color.green)
                            .frame(width: 100, height: 100)
                        
                    }
                    
                    Button (action:{
                        print("redpress")
                        if self.signal.toggleValue2 == false {
                            self.signal.toggleValue2 = true
                        } else {
                            self.signal.toggleValue2 = false
                        }
                        
                        
                        
                    }){
                        Circle()
                            .fill(Color.red)
                            .frame(width: CGFloat(100), height: CGFloat(100))
                        
                    }
                    
                    
                    
                    
                    
                }
                
              
                
                
            }
            
        }
    }
}

//struct RaazsController_Previews: PreviewProvider {
//    static var previews: some View {
//        //RaazsController(signal: <#Binding<Signal>#>)
//    }
//}
