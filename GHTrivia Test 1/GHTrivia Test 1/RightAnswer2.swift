//
//  Answer.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct RightAnswer2: View {
    
    @State var arightBool = false
    
    let aanswers2 : [String] = ["Sprite", "Adidas", "GAP", "Nike"]
    
    
    var body: some View {
        
        VStack{
            
            
            Button (action:{
                if self.arightBool == false{
                    
                    self.arightBool = true}
                else{
                    self.arightBool = false}
                
                
                
            })
            {
                
                Text(self.aanswers2[0])
                    
                    .fontWeight(.semibold)
                    .font(.headline)
                    
                    .multilineTextAlignment(.center)
                    .frame(width: 100, height: 200, alignment: .center)
                    .foregroundColor(Color.black)
                    .padding()
                    .animation(Animation.easeInOut(duration: 1.0))
                    .scaleEffect(self.arightBool ? 1.2 : 1.0)
                    .animation(.spring())
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            
                            .stroke(self.arightBool ? Color.green : Color.black, lineWidth: 5)
                            .background(self.arightBool ? Color.green : Color.white)
                            .opacity(self.arightBool ? 0.3 : 0.1)
                            
                            
                            .animation(Animation.easeInOut(duration: 1.0))
                )
                
            }
            
        }
        
    }
    
}

struct RightAnswer2_Previews: PreviewProvider {
    static var previews: some View {
        RightAnswer2()
    }
}
