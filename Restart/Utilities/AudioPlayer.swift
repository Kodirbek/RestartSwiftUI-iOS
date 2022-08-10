//
//  AudioPlayer.swift
//  Restart
//
//  Created by Abduqodir's MacPro on 2022/04/04.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        } catch {
            print("Could not play the audio file")
        }
    }
}
