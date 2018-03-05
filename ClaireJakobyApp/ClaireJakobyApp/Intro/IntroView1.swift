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
        
        introText.text = "Hallo ik ben claire en ik ben  een 26 jarige swift programeur"
        
        // make imageview the GIF
        swipeAnimation.loadGif(name: "Swipe_animation")
        
    }
    
}

