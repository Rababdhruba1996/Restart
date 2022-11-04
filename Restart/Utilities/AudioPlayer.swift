//
//  AudioPlayer.swift
//  Restart
//
//  Created by UXD on 2022/08/19.
//

import Foundation
import AVFoundation

var audioPlayer:AVAudioPlayer?

func playSound(sound:String,type:String){
    if let path=Bundle.main.path(forResource: sound, ofType: type){
        do{
           audioPlayer=try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            //test for upload
        }catch{
            print("Could not play the sound file.")
        }
    }
}
