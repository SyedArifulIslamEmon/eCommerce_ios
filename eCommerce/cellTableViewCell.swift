import UIKit

class cellTableViewCell: UITableViewCell,UICollectionViewDataSource, UICollectionViewDelegate{
    //var collectionArray : [collectionCellData]?
    var collectionData : [collectionCellData] = []
    
    @IBOutlet weak var imgItem: UIImageView!
    
    @IBOutlet weak var lblItemName: UILabel!
    @IBOutlet weak var lblDescriptionOfItem: UILabel!
    
    @IBOutlet weak var btnCollectionOperation: UIButton!
    
    @IBOutlet var cellCollectionViewOutlet: UICollectionView!
 
    @IBOutlet weak var secondViewHeightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellCollectionViewOutlet.delegate = self
        cellCollectionViewOutlet.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    var showDetails = false {
        didSet{
            secondViewHeightConstraint.priority = showDetails ? 250 :999
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellCollection = cellCollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! cellCollectionViewCell
        let imageCollectionView = cellCollection.viewWithTag(10) as! UIImageView
        imageCollectionView.kf.setImage(with: URL(string: collectionData[indexPath.item].secondViewImageOneOne!))
        
        cellCollection.lblCollectionItems.text = collectionData[indexPath.item].secondViewTextnameOneOne!
        
        return cellCollection
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 80,height: 80)
    }
}
