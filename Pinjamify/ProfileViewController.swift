//
//  ProfileViewController.swift
//  Pinjamify
//
//  Created by Maulana Akmal  on 20/07/19.
//  Copyright © 2019 Maulana Akmal . All rights reserved.
//

import UIKit

class ProfileViewController : UIViewController {
    @IBOutlet weak var topBackground: UIView!
    @IBOutlet weak var pointView: UIView!
    @IBOutlet var sections: [UIView]!
    
    override func viewDidLoad() {
        topBackground.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        topBackground.layer.cornerRadius = 40
        
        pointView.layer.cornerRadius = pointView.frame.height / 3
        pointView.layer.shadowPath = UIBezierPath(roundedRect: pointView.bounds, cornerRadius: pointView.frame.height / 3).cgPath
        pointView.layer.shadowColor = UIColor.black.cgColor
        pointView.layer.shadowOffset = CGSize(width: 2, height: 2)
        pointView.layer.shadowOpacity = 0.4
        
        for section in sections {
            section.layer.cornerRadius = section.frame.height/2
            section.layer.backgroundColor = UIColor.lightGray.cgColor
        }
    }
}
