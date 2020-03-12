//
//  Hint.swift
//  GHTrivia Test 1
//
//  Created by Raaziq Brown on 3/8/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct Hint: View {
    
    @State var nexty = false
    @State var pageInt: Int = 1
    
    
    
    
    var body: some View {
        ZStack{
            
            VStack{
                
                HStack{
                    Button(action:{})
                    {
                        Image(systemName: "line.horizontal.3")}
                        .frame(width: 100, height: 100)
                        .position(x: 30, y: 30)
                        .foregroundColor(.black)
                    
                    ZStack{
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 50, height: 50)
                            .position(x:155, y:30)
                        
                        NavigationLink(destination: PageTwo()) {
                            Text("Next")
                                .fontWeight(.semibold)
                                
                                .font(.headline)
                                .frame(width: 200, height: 200)
                                .multilineTextAlignment(.center)
                                .padding()
                                .foregroundColor(.white) .position(x:155, y:30)
                            
                        }
                        
                        //                Button(action:{
                        //                    if self.nexty == false{
                        //                        self.nexty = true}
                        //                    else{self.nexty = false}
                        //
                        //                    self.pageInt = self.pageInt + 1
                        //
                        //                    print("\(self.pageInt)")
                        //
                        //
                        //
                        //                }){
                        //                    Text("Next")
                        //                        .font(.subheadline)
                        //                        .fontWeight(.bold)
                        //
                        //                        .frame(width: 100, height: 98.0)
                        //                        .position(x:155, y:30)
                        //                        .foregroundColor(.white)
                        //
                        //
                        //                    }
                        
                    }
                }
                
                
                
                
                
                HStack{
                    ZStack{
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 100, height: 100)
                        
                        Button(action:{}){
                            Text("Hint")
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(width: 100, height: 100)
                                .foregroundColor(.white)
                                .offset(x:0, y:-15)
                        }
                        
                        
                    }
                }
                .offset(x:0, y:80)
            }
        }
    }
}
struct Hint_Previews: PreviewProvider {
    static var previews: some View {
        Hint()
    }
}
