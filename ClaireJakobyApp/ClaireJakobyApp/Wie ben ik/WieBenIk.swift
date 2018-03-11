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
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    func AgeGenerator() {
        
        let date = Date()
        let calender = NSCalendar.current
        let year = calender.component(.year, from: date)
        
        let ageNow = year - 1991
        
        ageLabel.text = "Ik ben nu \(ageNow) jaar oud"
    }
    
    override func viewDidLoad() {
        
        // Reveal Controller controls
        //-------------------------
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        // Profiel foto rond maken en een lijn erom heen
        self.profielFoto.layer.cornerRadius = self.profielFoto.frame.size.width / 2
        self.profielFoto.layer.borderWidth = 3
        self.profielFoto.layer.borderColor = UIColor(displayP3Red: 28/255, green: 110/255, blue: 140/255, alpha: 1).cgColor
        self.profielFoto.clipsToBounds = true
        
        //Rotating Mandala
        rotatingMandala.startRotating()
        
        // Age calculator
        AgeGenerator()
        super.viewDidLoad()
        
    }
    
    
    

    
}
