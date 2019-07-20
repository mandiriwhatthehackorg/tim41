//
//  ViewController.swift
//  Pinjamify
//
//  Created by Maulana Akmal  on 20/07/19.
//  Copyright © 2019 Maulana Akmal . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var limitView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewContainer: UIView!
    
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
        collectionViewContainer.layer.shadowPath =
            UIBezierPath(roundedRect: collectionView.bounds,
                         cornerRadius: collectionView.layer.cornerRadius).cgPath
        collectionViewContainer.layer.shadowColor = UIColor.black.cgColor
        collectionViewContainer.layer.shadowOpacity = 0.5
        collectionViewContainer.layer.shadowOffset = CGSize(width: 1, height: 1)
        collectionViewContainer.layer.shadowRadius = collectionView.frame.height / 5
        collectionViewContainer.layer.masksToBounds = false
        collectionViewContainer.layer.cornerRadius = collectionView.frame.height / 5
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PaymentServiceCell
        cell.image.image = UIImage(named: "payment-item-spotify")
        cell.image.layer.cornerRadius = cell.image.frame.height / 2
        cell.image.layer.masksToBounds = false
        cell.image.clipsToBounds = true
        cell.image.layer.borderWidth = 1
        cell.image.layer.borderColor = UIColor.red.cgColor
        return cell
    }
    
}

