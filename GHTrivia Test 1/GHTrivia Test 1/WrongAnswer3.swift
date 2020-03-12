//
//  Answer.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI
import AVFoundation


struct WrongAnswer3: View {
    
    let answers4 = ["August 15, 1979", "July 23, 1985", "October 17, 2003"]
    
    @State var wrongBool3 = false
    
    //    let randomChoice3 = answers.randomElement()!
    //
    var body: some View {
        ZStack{
            
         
            
            VStack{
                
                Button (action:{
                    if self.wrongBool3 == false{
                        
                        self.wrongBool3 = true}
                    else{
                        self.wrongBool3 = false}
                    
                    if self.wrongBool3 == true{
                        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                    }
                    
                })
                {
                    Text(self.answers4[0])
                        .fontWeight(.semibold)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .frame(width: 100, height: 200, alignment: .center)
                        .foregroundColor(.black)
                        .padding()
                        .animation(Animation.easeInOut(duration: 1.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                
                                .stroke(self.wrongBool3 ? Color.red : Color.black, lineWidth: 5)
                                .background(self.wrongBool3 ? Color.red : Color.white)
                                .opacity(self.wrongBool3 ? 0.5 : 0.1)
                                
                                
                                .animation(Animation.easeInOut(duration: 0.5))
                    )
                }
                
            }
            
        }}
}

struct WrongAnswer3_Previews: PreviewProvider {
    static var previews: some View {
        WrongAnswer3()
    }
}
