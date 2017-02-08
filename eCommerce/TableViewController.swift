import UIKit
import Kingfisher


class TableViewController: UITableViewController {
    

    @IBOutlet var tableViewOutlet: UITableView!
    
    //var imageView : UIImageView!
    //var image: UIImage!
    
    var selectedIndex = -1
    var dataArray = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        dataArray = [CellData(cellItemImage:"https://www.betterhealth.vic.gov.au/~/media/bhc/images/healthy%20living/fruit-and-veg_1050x600.jpg?la=en", cellItemName: "Fruits & Vegetables", cellItemDescription: "Fruit & Vegetable Baskets, Vegetables, Fruits, Cut Fresh, Sprouts & Herbs"),
                           CellData(cellItemImage: "https://img.sitaphal.com/media/uploads/sitaphal-7293-1-1-1459779737.png", cellItemName: "Grocery & Staples", cellItemDescription: "Pulses, Rice & Flour, Dry Fruits & Nuts, Edible oils & Ghee, Spices, Salt & Sugar, Organic Sta...."),
                           CellData(cellItemImage: "https://simpleneedsgablog.files.wordpress.com/2013/09/pict1643.jpg", cellItemName: "Household Needs", cellItemDescription: "Laundary Detergents, Disheashers & Cleaners, Repellents & Fresheners, Kitchen & Dining...."),
                           CellData(cellItemImage: "http://saibazaar.in/image/catalog/Personal-Care-and-Beauty-Products.jpg", cellItemName: "Personal Care", cellItemDescription: "Soaps, Face & Handwash, Hair Care, Oral Care, Skin Care, Shaving & Hair Removal, Fem...."),
                           CellData(cellItemImage: "http://www.belfasttelegraph.co.uk/incoming/article29631588.ece/ALTERNATES/h342/bread_milk.jpg", cellItemName: "Breakfast & Dairy", cellItemDescription: "Milk & Milk Products, Paneer & Curd, Butter & Cheese, Bread & Eggs, Breakfast Ceral, Jam....")]
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row){
            return 400
        }
        else{
            return 129
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cellIdentifier = "cell"
        let cell =  tableViewOutlet.dequeueReusableCell(withIdentifier: "cell") as! cellTableViewCell
      
        //cell.imgItem.image = dataArray[indexPath.row].cellItemImage
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.kf.setImage(with: URL(string: dataArray[indexPath.row].cellItemImage!))
        
        cell.lblItemName.text = dataArray[indexPath.row].cellItemName
        cell.lblDescriptionOfItem.text = dataArray[indexPath.row].cellItemDescription
        /*
        let cellCollection =  tableViewOutlet.dequeueReusableCell(withIdentifier: "collectionCell") as! cellCollectionViewCell
        cellCollection.lblCollectionItems.text = dataArray[indexPath.row].secondViewTextnameOneOne
        */
        
        cell.contentView.backgroundColor = UIColor.clear
        
        let whiteRoundedView : UIView = UIView(frame: CGRect(x: 0, y: 10, width: self.view.frame.size.width,height: 120))
        
        whiteRoundedView.layer.backgroundColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [1.0, 1.0, 1.0, 1.0])
        whiteRoundedView.layer.masksToBounds = false
        whiteRoundedView.layer.cornerRadius = 2.0
        whiteRoundedView.layer.shadowOffset = CGSize(width: -1, height: 1)
        whiteRoundedView.layer.shadowOpacity = 0.2
        
        cell.contentView.addSubview(whiteRoundedView)
        cell.contentView.sendSubview(toBack: whiteRoundedView)

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
