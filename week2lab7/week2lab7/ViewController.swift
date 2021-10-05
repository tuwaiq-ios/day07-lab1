//
//  ViewController.swift
//  week2lab7
//
//  Created by PC on 28/02/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let emojis = ["🥰", "😎", "👻", "😜"]
    
    @IBOutlet weak var tableView: UITableView!
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cellEmj = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! CustomCell
        
        cellEmj.label.text = emojis[indexPath.row]
        
        if indexPath.row % 2 == 0{
            cellEmj.backgroundColor = UIColor.yellow
        }
        else{
            cellEmj.backgroundColor = UIColor.black
        }
        
        return cellEmj
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }


}
class CustomCell : UITableViewCell {
    
    
    @IBOutlet weak var label: UILabel!
}



