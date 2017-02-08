import UIKit


class cellTableViewCell: UITableViewCell,UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    var arrayCollection = [collectionCellData]()
    
    @IBOutlet weak var imgItem: UIImageView!
    
    @IBOutlet weak var lblItemName: UILabel!
    
    @IBOutlet weak var lblDescriptionOfItem: UILabel!
    
    @IBOutlet weak var btnCollectionOperation: UIButton!
    
    @IBOutlet var cellCollectionViewOutlet: UICollectionView!
 
    
    @IBOutlet weak var secondViewHeightConstraint: NSLayoutConstraint!
    

   

    override func awakeFromNib() {
        super.awakeFromNib()
        
        arrayCollection = [collectionCellData(secondViewImageOneOne: "http://fairburyjeffs.org/wp-content/uploads/2015/08/Fruits-and-Vegetables.jpg" , secondViewTextnameOneOne: "Fruits & Vegetables Baskets" ),collectionCellData(secondViewImageOneOne: "http://eslforeveryone.com/wp-content/uploads/2015/11/vegetable-mix.jpg",secondViewTextnameOneOne: "Vegetables"), collectionCellData(secondViewImageOneOne: "https://resources.stuff.co.nz/content/dam/images/1/8/q/z/v/t/image.related.StuffLandscapeSixteenByNine.620x349.1ctxqt.png/1468285413814.jpg",secondViewTextnameOneOne: "Fruits"),collectionCellData(secondViewImageOneOne: "https://s-media-cache-ak0.pinimg.com/originals/1c/25/3d/1c253df42956cb3fe1522879175339f0.jpg",secondViewTextnameOneOne: "Cut Fresh, Sprouts & Herbs")]
    

    
        cellCollectionViewOutlet.delegate = self
        cellCollectionViewOutlet.dataSource = self
        
    }
    
    /*
    func array(){
        
    
        if ((viewWithTag(1)) != nil){
            arrayCollection = [collectionCellData(secondViewImageOneOne: "" , secondViewTextnameOneOne: "Fruits & Vegetables Baskets" ),collectionCellData(secondViewImageOneOne: "",secondViewTextnameOneOne: "Vegetables"), collectionCellData(secondViewImageOneOne: "",secondViewTextnameOneOne: "Fruits"),collectionCellData(secondViewImageOneOne: "",secondViewTextnameOneOne: "Cut Fresh, Sprouts & Herbs")]
        }
        else if ((viewWithTag(2)) != nil){
        
            arrayCollection = [collectionCellData(secondViewTextnameOneOne: "Pulses" ),collectionCellData(secondViewTextnameOneOne: "Rice and Flour"), collectionCellData(secondViewTextnameOneOne: "Dry Fruits & Nuts"),collectionCellData(secondViewTextnameOneOne: "Edible Oils & Ghee")]
        }
        else if ((viewWithTag(2)) != nil){
            
            arrayCollection = [collectionCellData(secondViewTextnameOneOne: "Fruits & Vegetables Baskets" ),collectionCellData(secondViewTextnameOneOne: "Vegetables"), collectionCellData(secondViewTextnameOneOne: "Fruits"),collectionCellData(secondViewTextnameOneOne: "Cut Fresh, Sprouts & Herbs")]
        }

        else if ((viewWithTag(4)) != nil){
            
            arrayCollection = [collectionCellData(secondViewTextnameOneOne: "Fruits & Vegetables Baskets" ),collectionCellData(secondViewTextnameOneOne: "Vegetables"), collectionCellData(secondViewTextnameOneOne: "Fruits"),collectionCellData(secondViewTextnameOneOne: "Cut Fresh, Sprouts & Herbs")]
        }
        else {
            
            arrayCollection = [collectionCellData(secondViewTextnameOneOne: "Fruits & Vegetables Baskets" ),collectionCellData(secondViewTextnameOneOne: "Vegetables"), collectionCellData(secondViewTextnameOneOne: "Fruits"),collectionCellData(secondViewTextnameOneOne: "Cut Fresh, Sprouts & Herbs")]
        }


    }*/
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    var showDetails = false {
        didSet{
            secondViewHeightConstraint.priority = showDetails ? 250 :999
        }
    }
    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellCollection = cellCollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! cellCollectionViewCell
        
        let imageCollectionView = cellCollection.viewWithTag(10) as! UIImageView
        imageCollectionView.kf.setImage(with: URL(string: arrayCollection[indexPath.row].secondViewImageOneOne!))
        
        
        cellCollection.lblCollectionItems.text = arrayCollection[indexPath.row].secondViewTextnameOneOne
        return cellCollection
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 80,height: 80)
    }
}
