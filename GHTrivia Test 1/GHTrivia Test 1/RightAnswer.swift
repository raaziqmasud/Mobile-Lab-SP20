//
//  Answer.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct RightAnswer: View {
    
    @State var rightBool = false
    
    let answers2 : [String] = ["August 11, 1973", "August 15, 1979", "July 23, 1985", "October 17, 2003"]
    
    
    var body: some View {
        
        VStack{
            
            
            Button (action:{
                if self.rightBool == false{
                    
                    self.rightBool = true}
                else{
                    self.rightBool = false}
                
                
                
            })
            {
                
                Text(self.answers2[0])
                    
                    .fontWeight(.semibold)
                    .font(.headline)
                    
                    .multilineTextAlignment(.center)
                    .frame(width: 100, height: 200, alignment: .center)
                    .foregroundColor(Color.black)
                    .padding()
                    .animation(Animation.easeInOut(duration: 1.0))
                    .scaleEffect(self.rightBool ? 1.2 : 1.0)
                    .animation(.spring())
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            
                            .stroke(self.rightBool ? Color.green : Color.black, lineWidth: 5)
                            .background(self.rightBool ? Color.green : Color.white)
                            .opacity(self.rightBool ? 0.3 : 0.1)
                            
                            
                            .animation(Animation.easeInOut(duration: 1.0))
                )
                
            }
            
        }
        
    }
    
}

struct RightAnswer_Previews: PreviewProvider {
    static var previews: some View {
        RightAnswer()
    }
}
