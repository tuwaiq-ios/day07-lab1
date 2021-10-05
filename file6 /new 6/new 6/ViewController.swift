//
//  ViewController.swift
//  new 6
//
//  Created by sara al zhrani on 27/02/1443 AH.
//

import UIKit

let emojis = ["👾", "👻", "🤓", "🤖"]





class viewcell2: UITableViewCell {
  
    @IBOutlet weak var label: UILabel!
}


class ViewController: UIViewController , UITableViewDelegate,
                      UITableViewDataSource{

    @IBOutlet weak var viewtable2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewtable2.delegate = self
        viewtable2.dataSource = self
    }
    
    func tableView(_ viewtable2: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TableViewCell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath)
        as! viewcell2
        
        
        
        TableViewCell.label.text = emojis[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            TableViewCell.label.backgroundColor = UIColor.systemPink
        }else{
            TableViewCell.label.backgroundColor = UIColor.systemYellow
            
        }
        return TableViewCell
    }
    
    
    

}







