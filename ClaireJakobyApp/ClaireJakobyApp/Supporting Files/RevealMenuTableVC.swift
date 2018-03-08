//
//  RevealMenuTableVC.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 08-03-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import Foundation

class RevealMenuTableVC : UITableViewController {
 
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["Main Page", "Apps", "Wie ben ik", "Contact"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
        
    }
    
}
