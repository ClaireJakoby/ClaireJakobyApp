//
//  IntroView1.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 27-02-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import UIKit

class IntroView1: UIViewController {
    
    @IBOutlet var swipeAnimation: UIImageView!
    @IBOutlet var introText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introText.text = "Hallo en welkom bij de Claire Jakoby App. Deze app is puur als een ondersteuning voor mijn CV. In deze app laat ik zien wie ik ben maar ook welke swift skills ik heb."
        
        // make imageview the GIF
        swipeAnimation.loadGif(name: "Swipe_animation")
        
    }
    
}

