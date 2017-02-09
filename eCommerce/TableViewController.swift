import UIKit
import Kingfisher

class TableViewController: UITableViewController {

    @IBOutlet var tableViewOutlet: UITableView!
    
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
  /*  class var collectionViewContentSize: CGSize{ get{return self.collectionViewContentSize} }
    func checkExpandedHeight() {
        print("indexpathheader=\(indexPathOfHeader)")
        switch indexPathOfHeader {
        case 0:
            me =  ((arrayOfFruits.count % 3) + 1)
            print(me)
        case 1:
            me =  ((arrayOfPersonalCare.count % 3) + 1)
        case 2:
            me =  ((arrayImages2.count % 3) + 1)
            print("indexpathheader=\(indexPathOfHeader)and me is \(me)")
        default:
            me = 3
            print("nothing")
        }
        
        switch me {
        case 0:
            expandedHeight = 250
        case 1 :
            expandedHeight = 350
        case 2 :
            expandedHeight = 450
        case 3:
            expandedHeight = 550
        default :
            expandedHeight = 350
        }
    }
    
    func checkHeight() {
        print("inside check height")
        checkExpandedHeight()
        print("after check expanded height")
        viewImg.isHidden = (frame.size.height < expandedHeight)
        
    }
    func watchFrameChanges() {
        NotificationCenter.default.addObserver(self, forKeyPath: "frame", options: .new, context: nil)
        checkHeight()
    }

    
    */
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row){
            return 400
        }
        else{
            return 129
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell =  tableViewOutlet.dequeueReusableCell(withIdentifier: "cell") as! cellTableViewCell
      
        cell.collectionData1 = dataArray[indexPath.row].collectionArray!
        cell.cellCollectionViewOutlet.reloadData()
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.kf.setImage(with: URL(string: dataArray[indexPath.row].cellItemImage!))
        
        cell.lblItemName.text = dataArray[indexPath.row].cellItemName
        cell.lblDescriptionOfItem.text = dataArray[indexPath.row].cellItemDescription
        
        cell.selectionStyle = .none
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
        self.tableViewOutlet.beginUpdates()
        self.tableViewOutlet.reloadRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        self.tableViewOutlet.endUpdates()
    }
}
