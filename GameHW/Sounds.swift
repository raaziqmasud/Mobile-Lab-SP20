//
//  Sounds.swift
//  GameHW
//
//  Created by Raaziq Brown on 2/26/20.
//  Copyright © 2020 Raaziq Brown. All rights reserved.
//

import Foundation
import AVFoundation

class Sounds {

  static var audioPlayer:AVAudioPlayer?

  static func playSounds(soundfile: String) {

      if let path = Bundle.main.path(forResource: "HovSnippet", ofType: ".mp3"){

          do{
              audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
              audioPlayer?.prepareToPlay()
              audioPlayer?.play()

          }catch {
              print("Error")
          }
      }
   }
}

class Sounds2 {

  static var audioPlayer2:AVAudioPlayer?

  static func playSounds2(soundfile: String) {

      if let path = Bundle.main.path(forResource: "Ding", ofType: ".mp3"){

          do{
              audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
              audioPlayer2?.prepareToPlay()
              audioPlayer2?.play()

          }catch {
              print("Error")
          }
      }
   }
}
