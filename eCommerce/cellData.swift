//
//  cellData.swift
//  eCommerce
//
//  Created by Sierra 4 on 08/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import Foundation
import UIKit


struct CellData{
    var cellItemImage : String?
    var cellItemName : String?
    var cellItemDescription : String?
    //let cellCollectionItemImageOneOne : UIImage!
    //let secondViewTextnameOneOne : String!
    
    init(cellItemImage : String?, cellItemName : String?, cellItemDescription : String?){
        self.cellItemName = cellItemName
        self.cellItemImage = cellItemImage
        self.cellItemDescription = cellItemDescription
    }
}
