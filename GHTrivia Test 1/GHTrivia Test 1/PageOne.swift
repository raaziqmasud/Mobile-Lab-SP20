//
//  ContentView.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI




struct PageOne: View {
    
    @State var track = Track(answerBool: false, answerShow: false)
    
    @State var nextBool = false
    @State var nextShowBool = false
    
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            
                 Hint()
            
            VStack{
           
                
                QuestionBoard()
                
                HStack{
                    
                    WrongAnswer3()
                    RightAnswer()
                }
                
                Spacer()
                
                HStack{
                    
                    WrongAnswer()
                    WrongAnswer2()
                }
                 Spacer()
                 Spacer()
                 Spacer()
                 Spacer()
                 Spacer()
                 Spacer()
                
                
            }
        }
    }
}

struct PageOne_Previews: PreviewProvider {
    static var previews: some View {
       PageOne()
    }
}
