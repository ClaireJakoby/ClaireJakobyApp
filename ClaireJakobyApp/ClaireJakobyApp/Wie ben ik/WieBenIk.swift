//
//  WieBenIk.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 10-03-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import Foundation
import UIKit

class WieBenIk: UIViewController {
    
    
    @IBOutlet var profielFoto: UIImageView!
    @IBOutlet var rotatingMandala: UIImageView!
   
    @IBOutlet var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        
        // Reveal Controller controls
        //-------------------------
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        // Profiel foto rond maken en een lijn erom heen
        self.profielFoto.layer.cornerRadius = self.profielFoto.frame.size.width / 2
        self.profielFoto.layer.borderWidth = 3
        self.profielFoto.layer.borderColor = UIColor(displayP3Red: 255/255, green: 187/255, blue: 105/255, alpha: 1).cgColor
        self.profielFoto.clipsToBounds = true
        
        //Rotating Mandala
        rotatingMandala.startRotating()
        super.viewDidLoad()
        
    }
    
    
    

    
}
