//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound("note\(sender.tag)")
        
    }
    

    func playSound(_ soundToPlay: String) {
        let soundURL = Bundle.main.url(forResource: soundToPlay, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            // couldn't load file :(
        }
        
        audioPlayer.play()
        
    }
    

}

