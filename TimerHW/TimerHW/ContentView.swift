//
//  ContentView.swift
//  TimerHW
//
//  Created by Raaziq Brown on 2/18/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var TimeLeft = 60
    @State var TimeGo = false
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        
        ZStack{
            
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                VStack{
                    
                    
                    Button (action: {
                        
                        self.TimeLeft += 2
                    }
                    ) {
                        
                        Text("++")
                            .font(.system(size: 100))
                            .foregroundColor(.white)
                        
                    }
                    
                }
                
                VStack{
                    if TimeLeft == 180{
                                           VStack{
                                               
                                               Spacer()
                                               HStack{
                                                   HStack{
                                                       Circle()
                                                           .fill(Color.white)
                                                           .frame(width: 100, height: 100)
                                                   }
                                                   
                                                   HStack{
                                                       Circle()
                                                           .fill(Color.white)
                                                           .frame(width: 100, height: 100)
                                                   }
                                                HStack{
                                                    Circle()
                                                        .fill(Color.white)
                                                        .frame(width: 100, height: 100)
                                                }

                                                
                                            }
                                               Spacer()
                                           }
                                           
                                           
                                       }
                    
                }
                
                VStack{
                    //minute 3
                    if TimeLeft == 120{
                        VStack{
                            
                            Spacer()
                            HStack{
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }
                                
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }}
                            Spacer()
                        }
                        
                        
                    } else if TimeLeft > 120 && TimeLeft < 140 {
                        
                        
                        VStack{
                            Spacer()
                            HStack{
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }
                                
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }}
                            HStack{
                                
                                ForEach(120..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                            
                        }}else if TimeLeft >= 140 && TimeLeft < 160{
                        VStack{
                            Spacer()
                            
                            HStack{
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }
                                
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }}
                            
                            
                            HStack {
                                ForEach(0..<20, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(140..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.black)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                        
                    } else if TimeLeft>=160 && TimeLeft<180{
                        VStack{
                            Spacer()
                            
                            HStack{
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }
                                
                                HStack{
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 100, height: 100)
                                }}
                            
                            
                            HStack {
                                ForEach(0..<20, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(20..<40, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.black)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(160..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                        
                        
                    }
                    
                    
                }
                
                
                VStack{
                    //MINUTE 2//
                    
                    
                    
                    if TimeLeft >= 60 && TimeLeft < 80 {
                        VStack{
                            
                            Spacer()
                            HStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 100, height: 100)
                            }
                            HStack{
                                
                                ForEach(60..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                    } else if TimeLeft >= 80 && TimeLeft < 100{
                        VStack{
                            Spacer()
                            
                            HStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 100, height: 100)
                            }
                            
                            
                            HStack {
                                ForEach(0..<20, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(80..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.black)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                        
                    } else if TimeLeft>=100 && TimeLeft<120{
                        VStack{
                            Spacer()
                            
                            HStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 100, height: 100)
                            }
                            
                            
                            HStack {
                                ForEach(0..<20, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(20..<40, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.black)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(100..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                        
                        
                    }
                    
                    //MINUTE 1//
                    
                    if TimeLeft <= 20 {
                        VStack{
                            Spacer()
                            
                            HStack{
                                
                                ForEach(0..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                        
                        
                    } else if TimeLeft >= 20 && TimeLeft < 40{
                        
                        VStack(alignment: .center){
                            
                            Spacer()
                            HStack {
                                ForEach(0..<20, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(20..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.black)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                        
                    } else if TimeLeft >= 40 && TimeLeft < 60{
                        
                        VStack{
                            
                            Spacer()
                            HStack {
                                ForEach(0..<20, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                
                                ForEach(20..<40, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.black)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            
                            HStack {
                                ForEach(40..<TimeLeft, id: \.self) {_ in
                                    
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 10, height: 10)
                                }
                            }
                            Spacer()
                        }
                        
                    }
                    
                    
                    
                    //                HStack{
                    //
                    //                    ForEach(0..<TimeLeft, id: \.self) {_ in
                    //
                    //                        Circle()
                    //                            .fill(Color.white)
                    //                            .frame(width: 10, height: 10)
                    //                    }
                    //
                    //
                    //                }
                    
                    
                    
                    //                TimeDisplay(TimeLeft: $TimeLeft)
                    
                    
                    VStack{
                        Button (action: {
                            
                            self.TimeGo.toggle()
                            
                            //                    if !self.TimeGo{
                            //                        self.TimeLeft = 10
                            //                    }
                        }
                        ) {
                            
                            Text(">")
                                .font(.system(size: 140))
                                //                            .bold()
                                .foregroundColor(.white)
                            
                        }
                        
                        Spacer()
                        
                        
                        Button (action: {
                            
                            self.timer.upstream.connect().cancel()
                            
                            
                            if !self.TimeGo{
                                self.TimeLeft = 10
                            }
                        }
                        ) {
                            
                            Text("X")
                                .font(.system(size: 120))
                                .foregroundColor(.red)
                            
                        }
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                }
                
            }
        }
        .onReceive(timer) { _ in
            // Block gets called when timer updates.
            
            // If timeRemaining and timer is running, count down.
            if self.TimeLeft  > 0 && self.TimeGo {
                self.TimeLeft  -= 1
                
                print("Time Remaining:", self.TimeLeft )
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
