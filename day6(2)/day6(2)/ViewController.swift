import UIKit

let emojis = ["👾", "👻", "😎", "🤖"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var table: UITableView!
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return emojis.count
    
  }
    
  func tableView(_ tableView: UITableView, cellForRowAt
                    indexPath: IndexPath) -> UITableViewCell
  {
    let cell = tableView.dequeueReusableCell(withIdentifier: "123",for: indexPath) as! tableCell
    
    cell.lablecell.text = emojis[indexPath.row]
    if (indexPath.row % 2 == 0)
    {
      cell.lablecell.backgroundColor = UIColor.red
    } else {
      cell.lablecell.backgroundColor = UIColor.yellow
    }
    return cell
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    table.delegate = self
    table.dataSource = self
  }
}
class tableCell:UITableViewCell {
  @IBOutlet weak var lablecell: UILabel!
}

















