//
//  ContentView.swift
//  Poster
//
//  Created by Raaziq Brown on 2/6/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

import SafariServices

struct ContentView: View {
    
    @State var logoAnimation = false
    @State var px2Animation = false
    @State var raazAnimation = false
    @State var tAnimation = false
    @State var tNameAnimation = false
    @State var rNameAnimation = false
    @State var buttAnimation = false
    @State var yes = false
    
    
    let myCGFloat = CGFloat(100)
    
    var body: some View {
        
        ZStack{
            
            Color(red: 255, green: 255, blue: 255)
            
            VStack{
                Spacer()
//
//                Text("Meet the Makers")
//                    .font(.custom("Helvetica-Bold", size: 40))
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(.green)
//                    .offset(x:-1)
//                    .offset(y:70)
                   
                
                Spacer()
                HStack(spacing: -80){
                    Spacer()
                    Spacer()
                    Spacer()
                    Image("R")
                        .resizable()
                        .frame(width: 280, height: 280)
                        
                        .offset(x:40)
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(raazAnimation ? 2 : 1.0)
                        .animation(Animation.easeInOut(duration: 1.2))
                        .onTapGesture {
                            self.raazAnimation.toggle()
                            self.rNameAnimation.toggle()
                    }
                    Image("T-1")
                        .resizable()
                        .frame(width:230, height:230)
                        .offset(y:20)
                        .offset(x:-10)
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(tAnimation ? 2 : 1.2)
                        .animation(Animation.easeIn(duration: 1.0))
                        .onTapGesture {
                            self.tAnimation.toggle()
                            self.tNameAnimation.toggle()
                    }
                }
                
                Spacer()
                
                Spacer()
                
                VStack{
                    
                    Button(action:{
                        
                        self.yes.toggle()
                        
                    }){
                        Image("Artboard 2")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 100, height: 100)
                            .opacity(buttAnimation ? 1.0: 0.01)
                            .animation(Animation.easeInOut(duration: 1.0)
                        )}
                    
                }
                .sheet(isPresented: $yes){
                    
                    safari()
                    
                }
                
                
                
                Spacer()
                Spacer()
            }
            
            
            VStack (spacing: 80){
                Spacer()
                
                
                Text("Meet the Makers")
                    .font(.custom("Helvetica-Bold", size: 40))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                .padding()
//                    .offset(y:-20)
                    .aspectRatio(contentMode: .fit)
                
                
                
                Spacer()
                Spacer()
                
                
                
                Image("Get-Hip-Logo-less-height")
                    .resizable()
                    .frame(width: 360, height: 100)
                    .offset(x: 0, y:  rNameAnimation ? 120 : 0)
                    .offset(x: 0, y:  tNameAnimation ? 100 : -45)
                    .aspectRatio(contentMode: .fit)
                    .rotationEffect(logoAnimation ? .degrees(360) : .degrees(0))
                    .opacity(logoAnimation ? 0.01: 1.0)
                    .animation(Animation.easeInOut(duration: 1.2))
                    .aspectRatio(contentMode: .fit)
                    .onTapGesture {
                        self.logoAnimation.toggle()
                }
                
                
                
                VStack(spacing:30){
                    
                    
                    HStack{
                        
                        
                        Text("RAAZ")
                            .font(.custom("Helvetica-Bold", size: 30))
                            .background(Color.white)
                            .foregroundColor(.black)
                            .opacity(rNameAnimation ? 1.0 : 0.01)
                            .offset(x: 0, y:  rNameAnimation ? -300 : 12.4)
                            .animation(Animation.easeInOut(duration : 1.2))
                        
                        Spacer()
                        
                        Text("TANASIA")
                            .font(.custom("Helvetica-Bold", size: 30))
                            .background(Color.white)
                            .foregroundColor(.black)
                            .opacity(tNameAnimation ? 1.0 : 0.01)
                            .offset(x: 0, y:  tNameAnimation ? -300 : 12.4)
                            .animation(Animation.easeInOut(duration: 1.2))
                    }
                    
                    Image("BLACK LOGO")
                        .resizable()
                        .frame(width: myCGFloat, height: myCGFloat)
                        .onTapGesture {
                            self.buttAnimation.toggle()
                    }
                    
                }
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct safari : UIViewControllerRepresentable{
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ContentView.safari>) -> SFSafariViewController {
            
            let controller = SFSafariViewController(url: URL(string:"http://popxtwo.co/home")!)
            return controller
            
        }
        
        func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<ContentView.safari>) {
        }
    }
    
}

