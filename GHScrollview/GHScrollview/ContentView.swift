//
//  ContentView.swift
//  GHScrollview
//
//  Created by Raaziq Brown on 3/12/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import SwiftUI

struct Menu1{
    var name: Menu2
    var type3: Menu4
}

struct Menu2 {
    var name: String
    var type1: Menu3
    var type2: String
    var type3: String
    
}

struct Menu3{
    var name: String
    var all: String
    var clas: String
    
}


struct Menu4 {
    var name: String
    var type1: String
    var type2: String
    var type3: String
    
}

class AppModel: ObservableObject{
    var menus = [Menu1]()
    var trivias = [Menu2]()
    var gamesy = [Menu3]()
    var videos = [Menu4]()
    
    init(){
        
        let triv = Menu3(name: "Trivia", all: "General", clas: "Classic")
        let games = Menu2(name: "Games", type1: triv, type2: "Match the Track", type3: "Bumpin'")
        let vid = Menu4(name: "Video", type1: "Episodes", type2: "On the Block", type3: "Cyphers")
        let menu1 = Menu1(name: games, type3: vid)
        
        menus.append(menu1)
        trivias.append(games)
        gamesy.append(triv)
        videos.append(vid)
        
        
    }
    
}


struct OptionCell: View {
    var menu: Menu1
    
    var body: some View {
       
            
            VStack(alignment: .leading) {
                Text("\(menu.name.name)")
                    .font(.system(size: 20, weight: .medium))
                Text("\(menu.type3.name)")
                    .font(.system(size: 20, weight: .regular))
            
        }
    }
}




//struct GameOptions{
//
//    var game: Games
//    @State var showTog = false
//
//    var body: some View{
//
//    VStack(alignment: .leading){
//
//        Text("\(game.mtt)")
//            .font(.system(size: 25, weight: .medium))
//        Text("\(game.bump)")
//                  .font(.system(size: 25, weight: .medium))
//
//        Text("Trivia")
//        .font(.system(size: 25, weight: .medium))
//        }
//
//    }
//
//}


struct ContentView: View {
    @ObservedObject var appModel = AppModel()
    
    @State var showModal = false
    
    @State var selectedOp: Menu1? = nil
    
    var body: some View {
        ZStack{
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    ForEach(appModel.menus, id:_) { show in
                        Button(action:{
                            
                            self.selectedOp = menu
                            self.showModal.toggle()
                            
                        }){
                            OptionCell(menu: menu)
                        }
                            
                        .buttonStyle(PlainButtonStyle())
                    }
                    .sheet(isPresented: self.$showModal) {
                        DetailView(artist: self.selectedOp!.name)
                    }
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
