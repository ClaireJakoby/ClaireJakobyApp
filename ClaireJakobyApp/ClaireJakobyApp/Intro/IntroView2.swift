//
//  IntroView2.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 05-03-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import Foundation


class IntroView2 : UIViewController {
    
    @IBOutlet var introTextPartTwo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        introTextPartTwo.text = "Kleine introductie alvast: Mijn naam is Claire Jakoby en ben 26 jaar. Ik woon in Hilversum en heb me gestort op de swift taal"
        
    }
    
    
}
