//
//  Answer.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI
import AVFoundation


struct WrongAnswer2: View {
    
    let answers3 = ["August 15, 1979", "July 23, 1985", "October 17, 2003"]

     @State var wrongBool2 = false
    
    var body: some View {
                      VStack{
                      
                      Button (action:{
                          if self.wrongBool2 == false{
                              
                              self.wrongBool2 = true}
                          else{
                              self.wrongBool2 = false}
                          
                          if self.wrongBool2 == true{
                              AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                          }
                          
                      })
                      {
                          Text(self.answers3[02])
                              .fontWeight(.semibold)
                              .font(.headline)
                              .multilineTextAlignment(.center)
                              .frame(width: 100, height: 200, alignment: .center)
                              .foregroundColor(.black)
                              .padding()
                              .animation(Animation.easeInOut(duration: 1.0))
                              .overlay(
                                  RoundedRectangle(cornerRadius: 25)
                                      
                                      .stroke(self.wrongBool2 ? Color.red : Color.black, lineWidth: 5)
                                      .background(self.wrongBool2 ? Color.red : Color.white)
                                      .opacity(self.wrongBool2 ? 0.5 : 0.1)
                                      
                                      
                                      .animation(Animation.easeInOut(duration: 0.5))
                          )
                      }
                      
                  }

    }
}

struct WrongAnswer2_Previews: PreviewProvider {
    static var previews: some View {
        WrongAnswer2()
    }
}
