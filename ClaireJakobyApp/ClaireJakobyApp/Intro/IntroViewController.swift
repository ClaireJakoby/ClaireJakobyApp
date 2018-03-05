//
//  IntroViewController.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 27-02-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // View 1 intro added to scrollview
        let V1 = self.storyboard?.instantiateViewController(withIdentifier: "v1") as UIViewController!
        self.addChildViewController(V1!)
        self.scrollView.addSubview((V1?.view)!)
        V1?.didMove(toParentViewController: self)
        V1?.view.frame = scrollView.bounds
        
        // View 2 intro added to scrollview
        let V2 = self.storyboard?.instantiateViewController(withIdentifier: "v2") as UIViewController!
        self.addChildViewController(V2!)
        self.scrollView.addSubview((V2?.view)!)
        V2?.didMove(toParentViewController: self)
        V2?.view.frame = scrollView.bounds
        
        //Move V2 next to view intro 1
        var V2Frame : CGRect = V2!.view.frame
        V2Frame.origin.x = self.view.frame.width
        V2?.view.frame = V2Frame
        
        // View 3 / Knock screen intro added to scrollview
        let V3 = self.storyboard?.instantiateViewController(withIdentifier: "V3KnockScreen") as UIViewController!
        self.addChildViewController(V3!)
        self.scrollView.addSubview((V3?.view)!)
        V3?.didMove(toParentViewController: self)
        V3?.view.frame = scrollView.bounds
        
        //Move V2 next to view intro 1
        var V3Frame : CGRect = V3!.view.frame
        V3Frame.origin.x = 2 * self.view.frame.width
        V3?.view.frame = V3Frame
        
        
        // resize scrollview so both fit
        self.scrollView.contentSize = CGSize(width: (self.view.frame.width * 3), height: self.view.frame.height)
    }
    
}

