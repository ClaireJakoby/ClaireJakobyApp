//
//  IntroView3Knock.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 28-02-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import Canvas
import AudioToolbox

class KnockScreen: UIViewController {
    
    @IBOutlet var codeText: UILabel!

    
    var audioPlayer = AVAudioPlayer()
    
    // Animation view
    @IBOutlet var animationView: CSAnimationView!
    
    // for knock func
    var count : Int = 0
    
    // This may not seem like something big but it is!!!!!!
    func knockCounter() {
        count += 1
        print("\(count)")
        if count == 3 {
            print("3 knocks now")
            self.performSegue(withIdentifier: "test", sender: nil)
        }
        
    }
    
    // For the knock sound when button is pressed
    func playSound(_ sound: String) {
        let knockSound = Bundle.main.path(forResource: sound, ofType: "mp3")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: knockSound!))
            audioPlayer.play()
        } catch {
            print("Error with the sound")
        }
        
    }
    
    // Knock button pressed vibrate, animate, sound, knock count
    @IBAction func knockButoonPressed(_ sender: Any) {
        //sound func
        playSound("knock")
        //Vibrate func
        AudioServicesPlaySystemSound(SystemSoundID(4095))
        print("Vibrating!!!")
        animationView.startCanvasAnimation()
        knockCounter()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        codeText.text = "Dit lijkt misschien niet heel veel maar dit was een enorme stap voor me toen ik begon met swift leren. Dit leg ik later aan verder uit in het Apps page"
    }
}



