//
//  ViewController.swift
//  DAY6Task
//
//  Created by MacBook on 27/02/1443 AH.
//

import UIKit




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let emojis = ["🌸","🍥","🌧","🎻","🎨","🫀","🎬","🪴","🍂","🌻"]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView1 .dequeueReusableCell(withIdentifier: "123", for: indexPath) as! customcell
        

        
        cell.label.text =  emojis [indexPath.row]
        
        
        if indexPath.row % 2 == 0 {
              
              cell.label.backgroundColor = UIColor.red }
          else
          {
              cell.label.backgroundColor = UIColor.blue
              
          }
          
        
        
        return cell
        
    }
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var tableView1:  UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView1.delegate = self
        tableView1.dataSource = self
    }
    
    
}


class customcell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    //@IBOutlet weak var customcell: Cutomcell!
    
    
    
    
}
