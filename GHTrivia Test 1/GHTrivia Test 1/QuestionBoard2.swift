//
//  QuestionBoard.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct QuestionBoard2: View {
    
    @State var answerBool = false
    @State var answerShow = false
    
    var body: some View {
        
        ZStack{
            
      
            
            VStack{
                
                Image("log").resizable()
                .frame(width: 115, height: 115)
                    .offset(x: 0, y: -30)
                
                
                Button(action:{
                    if self.answerShow == false{
                        self.answerShow = true}
                    else{self.answerShow = false
                    }
                    
                    print("\(self.answerShow)")
                    
                }
                    
                    ){
                    Text("What brand inked the first official Hip Hop endorsement deal?")
                        .fontWeight(.bold)
                        .font(.headline)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .opacity(self.answerShow ? 0.5 : 1)
//                        .position(x: 150, y: -150)
                        .frame(width: 300, height: 100, alignment: .center)
                    .animation(Animation.easeInOut(duration: 1.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.green, lineWidth: 5)
//                                .position(x: 150, y: -150)
                                .opacity(self.answerShow ? 0.5 : 1)
                                .animation(Animation.easeInOut(duration: 1.0))
                    )
                    
                }
                .position(x: 190, y: -10)
            }
         
            
        
            
        }
    }
}

struct QuestionBoard2_Previews: PreviewProvider {
    static var previews: some View {
        QuestionBoard2()
    }
}
