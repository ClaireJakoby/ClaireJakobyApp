//
//  MainPage.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 06-03-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import Foundation
import UIKit

class MainPage : UIViewController {
    
    @IBOutlet var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
}
