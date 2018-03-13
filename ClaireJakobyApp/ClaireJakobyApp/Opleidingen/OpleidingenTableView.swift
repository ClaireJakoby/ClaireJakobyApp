//
//  OpleidingenTableViewTableViewController.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 12-03-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import UIKit

class OpleidingenTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet var tableView: UITableView!
    
    let schoolNaamArray = ["Minister Calsschool", "Paulus school", "Comenius College", "Grafisch Lyceum", "ROC Amsterdam", "ROC Amsterdam", "The App Academy"]
    
    let plaatsSchoolArray = ["Naarden", "Hilversum", "Hilversum", "Utrecht", "Amsterdam", "Amsterdam", "Amsterdam"]
    
    let jaartalArray = ["XXXX - XXXX", "XXXX - XXXX", "XXXX - XXXX", "XXXX - XXXX", "XXXX - XXXX", "XXXX - XXXX", "XXXX - XXXX"]
    let schoolImageArray = [#imageLiteral(resourceName: "MinisterCalsSchool"),#imageLiteral(resourceName: "PaulusSchool"),#imageLiteral(resourceName: "ComeniusCollege"),#imageLiteral(resourceName: "GLU"),#imageLiteral(resourceName: "ROC"),#imageLiteral(resourceName: "ROC"),#imageLiteral(resourceName: "BAmsterdam")]
    
    let beschrijvingOpleidingArray = ["Basis onderwijs", "Basis onderwijs", "VMBO", "All-round DTP", "Media vormgever grafisch", "All-round DTP", "Junior Swift developer"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schoolNaamArray.count
    }
    
    func tableView(_ tabvleView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCellOpleidingen

        cell.imageSchool.layer.borderWidth = 2
        cell.imageSchool.layer.borderColor = UIColor(displayP3Red: 28/255, green: 110/255, blue: 140/255, alpha: 1).cgColor
        cell.imageSchool.image = schoolImageArray[indexPath.row]
        cell.naamSchoolLabel.text = schoolNaamArray[indexPath.row]
        cell.plaatsSchoolLabel.text = plaatsSchoolArray[indexPath.row]
        cell.jaartalOpleidingLabel.text = jaartalArray[indexPath.row]
        cell.beschrijvingOpleidingLabel.text = beschrijvingOpleidingArray[indexPath.row]

        return cell
        
    }
    
    func animateTable() {
        tableView.reloadData()
        let cells = tableView.visibleCells
        
        let tableViewHeight = tableView.bounds.size.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        
        var delayCounter = 0
        for cell in cells {
            UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
        }
    }
        
        

    override func viewDidLoad() {
        
        // Reveal Controller controls
        //-------------------------
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        
    }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            animateTable()
        }

    
}

