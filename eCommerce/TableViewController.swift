import UIKit
import Kingfisher
var indexPathHeader = 0

class TableViewController: UITableViewController {

    @IBOutlet var tableViewOutlet: UITableView!
    
    var expandedHeight: Int = 110
    var temp: Int = 0
    
    //var headArray : [String] = ["Fruits & Vegetables", "Grocery & Staples", "Household Needs", "Personal Care", "Breakfast & Dairy"]
    
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //var headArray =
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell =  tableViewOutlet.dequeueReusableCell(withIdentifier: "cell") as! cellTableViewCell
      
        cell.collectionData = dataArray[indexPath.row].collectionArray!
        cell.cellCollectionViewOutlet.reloadData()
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.kf.setImage(with: URL(string: dataArray[indexPath.row].cellItemImage!))
        
        cell.lblItemName.text = dataArray[indexPath.row].cellItemName
        cell.lblDescriptionOfItem.text = dataArray[indexPath.row].cellItemDescription
        
        cell.selectionStyle = .none
        
        cell.contentView.backgroundColor = UIColor.clear
        
        let whiteRoundedView : UIView = UIView(frame: CGRect(x: 10, y: 20, width: self.view.frame.size.width - 20, height: 150))
        
        whiteRoundedView.layer.backgroundColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [1.0, 1.0, 1.0, 1.0])
        whiteRoundedView.layer.masksToBounds = false
        whiteRoundedView.layer.cornerRadius = 20.0
        whiteRoundedView.layer.shadowOffset = CGSize(width: -1, height: 1)
        whiteRoundedView.layer.shadowOpacity = 20.0
        
        cell.contentView.addSubview(whiteRoundedView)
        cell.contentView.sendSubview(toBack: whiteRoundedView)
        
        if(selectedIndex == indexPath.row){
            cell.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        }
        else{
            cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        /*
        //cell.contentView.backgroundColor = UIColor.clear
        let whiteRoundedView : UIView = UIView(frame: CGRect(x: 0, y: 10, width: self.view.frame.size.width,height: 400))
        whiteRoundedView.layer.backgroundColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [1.0, 1.0, 1.0, 1.0])
        whiteRoundedView.layer.masksToBounds = false
        whiteRoundedView.layer.cornerRadius = 2.0
        whiteRoundedView.layer.shadowOffset = CGSize(width: -1, height: 1)
        whiteRoundedView.layer.shadowOpacity = 0.2
        
        cell.contentView.addSubview(whiteRoundedView)
        cell.contentView.sendSubview(toBack: whiteRoundedView)
*/
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(selectedIndex == indexPath.row){
            selectedIndex = -1
        }
        else{
            selectedIndex = indexPath.row
        }
        UIView.setAnimationsEnabled(false)
        self.tableViewOutlet.beginUpdates()
        indexPathHeader = indexPath.row
        self.tableViewOutlet.reloadRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        self.tableViewOutlet.endUpdates()
        UIView.setAnimationsEnabled(true)
        //tableViewOutlet.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row){
            //if((indexPath.row % 2 ) == 0){
                //let x = ceil(Double(collectionData.count) / 3)
            
//}
            return 330}

        /*for value in dataArray{
                if(value.cellItemName?.isEqual(headArray[selectedIndex]))!{
                    temp += 1
                }
            }
            var rows: Int = (temp / 3)
            rows += (temp % 3)
            expandedHeight = expandedHeight * rows
            if temp <= 3{
                return 230
            }else{
                return CGFloat(expandedHeight) + 129
            }
        }*/
        else{
            return 129
        }
        }
    }
