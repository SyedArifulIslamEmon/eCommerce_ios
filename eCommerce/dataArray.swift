//
//  dataArray.swift
//  eCommerce
//
//  Created by Sierra 4 on 09/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import Foundation

var dataArray = [
        CellData(cellItemImage:"https://www.betterhealth.vic.gov.au/~/media/bhc/images/healthy%20living/fruit-and-veg_1050x600.jpg?la=en", cellItemName: "Fruits & Vegetables", cellItemDescription: "Fruit & Vegetable Baskets, Vegetables, Fruits, Cut Fresh, Sprouts & Herbs",
                 
                 collectionArray: [collectionCellData(secondViewImageOneOne: "http://fairburyjeffs.org/wp-content/uploads/2015/08/Fruits-and-Vegetables.jpg" , secondViewTextnameOneOne: "Fruits & Vegetables Baskets" ),collectionCellData(secondViewImageOneOne: "http://eslforeveryone.com/wp-content/uploads/2015/11/vegetable-mix.jpg",secondViewTextnameOneOne: "Vegetables"), collectionCellData(secondViewImageOneOne: "https://resources.stuff.co.nz/content/dam/images/1/8/q/z/v/t/image.related.StuffLandscapeSixteenByNine.620x349.1ctxqt.png/1468285413814.jpg",secondViewTextnameOneOne: "Fruits"),collectionCellData(secondViewImageOneOne: "https://s-media-cache-ak0.pinimg.com/originals/1c/25/3d/1c253df42956cb3fe1522879175339f0.jpg",secondViewTextnameOneOne: "Cut Fresh, Sprouts & Herbs")] ),
        
    
     
        CellData(cellItemImage: "https://img.sitaphal.com/media/uploads/sitaphal-7293-1-1-1459779737.png", cellItemName: "Grocery & Staples", cellItemDescription: "Pulses, Rice & Flour, Dry Fruits & Nuts, Edible oils & Ghee, Spices, Salt & Sugar, Organic Sta....",
              
              collectionArray: [collectionCellData(secondViewImageOneOne: "http://www.lmjil.com/wp-content/uploads/2014/09/pulses-2.jpg" ,secondViewTextnameOneOne: "Pulses" ),collectionCellData(secondViewImageOneOne: "http://s3.amazonaws.com/cme_public_images/www_livestrong_com/photos.demandstudios.com/getty/article/83/169/498047827_XS.jpg" ,secondViewTextnameOneOne: "Rice and Flour"), collectionCellData(secondViewImageOneOne: "http://gomart.pk/image/data/fine-2002.jpg" ,secondViewTextnameOneOne: "Dry Fruits & Nuts"),collectionCellData(secondViewImageOneOne: "https://www.buyise.com/image/cache/edible_oils_ghee-600x315.jpg" ,secondViewTextnameOneOne: "Edible Oils & Ghee")]),
        
    
        CellData(cellItemImage: "https://simpleneedsgablog.files.wordpress.com/2013/09/pict1643.jpg", cellItemName: "Household Needs", cellItemDescription: "Laundary Detergents, Dishwashers & Cleaners, Repellents & Fresheners, Kitchen & Dining....",
              
              collectionArray:  [collectionCellData(secondViewImageOneOne: "https://i.kinja-img.com/gawker-media/image/upload/s--CSwow9qK--/c_scale,fl_progressive,q_80,w_800/18wwc1bh8n2v7jpg.jpg" ,secondViewTextnameOneOne: "Laundary Detergents" ),collectionCellData(secondViewImageOneOne: "https://www.finish.co.uk/media/1408780/1409308-aw-packshot-ft-rgb-lr.jpg?width=300&" ,secondViewTextnameOneOne: "Dishwashers & Cleaners"), collectionCellData(secondViewImageOneOne: "http://oteree.com/content/images/thumbs/0002452_repellents-fresheners_450.png" ,secondViewTextnameOneOne: "Repellents & Fresheners"),collectionCellData(secondViewImageOneOne: "https://s-media-cache-ak0.pinimg.com/736x/2b/2a/71/2b2a71786373e8c80c543ced4c762083.jpg" ,secondViewTextnameOneOne: "Kitchen & Dining")]),
        
    
        CellData(cellItemImage: "http://saibazaar.in/image/catalog/Personal-Care-and-Beauty-Products.jpg", cellItemName: "Personal Care", cellItemDescription: "Soaps, Face & Handwash, Hair Care, Oral Care, Skin Care, Shaving & Hair Removal, Fem....",
              
              collectionArray: [collectionCellData(secondViewImageOneOne: "http://shopitsoon.com/image/cache/categories/groceries/personal%20care/soaps_shopitsoon_waranngal_hyderabad-250x250.jpg" ,secondViewTextnameOneOne: "Soaps" ),collectionCellData(secondViewImageOneOne: "https://guideimg.alibaba.com/images/shop/76/09/05/2/boots-royal-jelly-7-piece-gift-set-body-wash-body-lotion-moisturising-face-cream-hand-wash-creme-bath-hand-nail-cream-soap_4197192.jpg" ,secondViewTextnameOneOne: "Face & Handwash"), collectionCellData(secondViewImageOneOne: "http://www.thefitindian.com/wp-content/uploads/2014/02/Indian-natural-remedies-for-hair.jpg" ,secondViewTextnameOneOne: "Hair Care"),collectionCellData(secondViewImageOneOne: "http://www.crystaldentalcentre.com/wp-content/uploads/2015/09/Common-Oral-Care-Mistakes-Nashville-TN-West-Meade-Dental-540x280.jpg?i=34288" ,secondViewTextnameOneOne: "Oral Care"), collectionCellData(secondViewImageOneOne: "http://www.permanentmakeupofmd.com/wp-content/uploads/2012/11/pic-services-skin-care.jpg" ,secondViewTextnameOneOne: "Skin Care" ), collectionCellData(secondViewImageOneOne: "https://images-na.ssl-images-amazon.com/images/G/01/img15/beauty/tile/25912_beauty_mens-grooming-tiles_shave_tile_670x520.png" ,secondViewTextnameOneOne: "Shaving & Hair Removal" )]),
        
    
        CellData(cellItemImage: "http://www.belfasttelegraph.co.uk/incoming/article29631588.ece/ALTERNATES/h342/bread_milk.jpg", cellItemName: "Breakfast & Dairy", cellItemDescription: "Milk & Milk Products, Paneer & Curd, Butter & Cheese, Bread & Eggs, Breakfast Ceral, Jam....",
              
              collectionArray: [collectionCellData(secondViewImageOneOne: "http://blogs.odialive.com/wp-content/uploads/2015/01/milk-products-price-hike-in-odisha.jpg" ,secondViewTextnameOneOne: "Milk & Milk Products" ),collectionCellData(secondViewImageOneOne: "http://c8.alamy.com/comp/F3GC2C/milk-curd-yogurt-dahi-cottage-cheese-paneer-and-cheese-made-from-milk-F3GC2C.jpg" ,secondViewTextnameOneOne: "Paneer & Curd"), collectionCellData(secondViewImageOneOne: "https://www.babyswiss.com/shop/images/AmishButter_Categoryheader.jpg" ,secondViewTextnameOneOne: "Butter & Cheese"),collectionCellData(secondViewImageOneOne: "https://www.scientificnutrition.in/wp-content/uploads/2016/08/eggs-and-bread.jpg" ,secondViewTextnameOneOne: "Bread & Eggs"),collectionCellData(secondViewImageOneOne: "http://superhumancoach.com/wp-content/uploads/2013/05/breakfast-cereals.jpg" ,secondViewTextnameOneOne: "Breakfast Ceral")]
            
    )]
