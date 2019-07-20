//
//  ViewController.swift
//  Pinjamify
//
//  Created by Maulana Akmal  on 20/07/19.
//  Copyright © 2019 Maulana Akmal . All rights reserved.
//

import UIKit
import FSPagerView

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, FSPagerViewDelegate, FSPagerViewDataSource {
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var limitView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewContainer: UIView!
    @IBOutlet weak var carouselView: FSPagerView! {
        didSet {
            self.carouselView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profilePic.layer.borderWidth = 3
        profilePic.layer.masksToBounds = false
        profilePic.layer.cornerRadius = profilePic.frame.height / 2
        profilePic.layer.borderColor = UIColor.white.cgColor
        profilePic.clipsToBounds = true
        
        limitView.layer.borderColor = UIColor.gray.cgColor
        limitView.layer.borderWidth = 2
        limitView.layer.masksToBounds = false
        limitView.layer.cornerRadius = limitView.frame.height / 4
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.layer.cornerRadius = collectionView.frame.height / 5
        
        collectionViewContainer.layer.backgroundColor = UIColor.white.cgColor
//        collectionViewContainer.layer.shadowPath =
//            UIBezierPath(roundedRect: collectionView.bounds,
//                         cornerRadius: collectionView.layer.cornerRadius).cgPath
//        collectionViewContainer.layer.shadowColor = UIColor.black.cgColor
//        collectionViewContainer.layer.shadowOpacity = 0.5
//        collectionViewContainer.layer.shadowOffset = CGSize(width: 1, height: 1)
//        collectionViewContainer.layer.shadowRadius = collectionView.frame.height / 5
//        collectionViewContainer.layer.masksToBounds = false
//        collectionViewContainer.layer.cornerRadius = collectionView.frame.height / 5
        
        carouselView.dataSource = self
        carouselView.delegate = self
        carouselView.transformer = FSPagerViewTransformer(type: .overlap)

        
    }

    //MARK: - Payment Service Collection View Protocol
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PaymentServiceCell
        let imageName = "payment-item-" + String(indexPath.item)
        cell.image.image = UIImage(named: imageName)
        cell.imageContainer.layer.cornerRadius = cell.image.frame.height / 2
        cell.image.layer.masksToBounds = false
        cell.image.clipsToBounds = true
        cell.imageContainer.layer.borderWidth = 1
        cell.imageContainer.layer.borderColor = UIColor.orange.cgColor
    
        cell.title.text = "PDAM"
        
        return cell
    }
    
    
     var adsData = ["ads-banner-1", "ads-banner-2"]
    //MARK: - FSPager protocol
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return adsData.count
    }
    
    
   
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        //FIXME: Add image
        cell.imageView?.image = UIImage(named: adsData[index])
        cell.layer.cornerRadius = cell.frame.height / 8
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.clipsToBounds = true
        return cell
    }
    
    
}

