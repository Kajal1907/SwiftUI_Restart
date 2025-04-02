//
//  AudioPlayer.swift
//  Restart
//
//  Created by Kajal on 02/04/25.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

// sound = file name, type = file extension
func playSound(sound: String, type: String) {
    // Add any necessary sound file to audio player
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
