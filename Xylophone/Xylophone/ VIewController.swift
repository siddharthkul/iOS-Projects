//
//  ViewController.swift
//  Xylophone
//
//  Created by Siddhart Kulkarni on 27/01/2016.

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var xylophoneSounds: AVAudioPlayer?
    var selectedSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {

        //print(sender.tag)
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()

    }
    
    func playSound() {
        
        let path = Bundle.main.path(forResource: selectedSoundFileName + ".wav", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        do {
            xylophoneSounds = try AVAudioPlayer(contentsOf: url)
            xylophoneSounds?.play()
        } catch {
            // couldn't load file :(
        }
        
    }

}

