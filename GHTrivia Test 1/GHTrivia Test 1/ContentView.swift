//
//  ContentView.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct Track{
    @State var answerBool = false
    @State var answerShow = false
    @State var nextBool = false
       @State var nextShowBool = false
    
}


struct ContentView: View {
    
    @State var track = Track(answerBool: false, answerShow: false, nextBool: false, nextShowBool: false)
    
   
    
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            PageOne()
         
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
