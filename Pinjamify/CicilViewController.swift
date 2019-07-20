//
//  CicilViewController.swift
//  Pinjamify
//
//  Created by Maulana Akmal  on 20/07/19.
//  Copyright © 2019 Maulana Akmal . All rights reserved.
//

import UIKit

class CicilViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var firstItemBlue: UIView!
    @IBOutlet weak var firstItemWhite: UIView!
    @IBOutlet weak var secondItemBlue: UIView!
    @IBOutlet weak var seconditemWhite: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        firstItemBlue.layer.cornerRadius = firstItemBlue.frame.height / 6
        firstItemWhite.layer.cornerRadius = firstItemWhite.frame.height / 2
        secondItemBlue.layer.cornerRadius = secondItemBlue.frame.height / 6
        seconditemWhite.layer.cornerRadius = seconditemWhite.frame.height / 2
        
        firstItemWhite.layer.shadowPath = UIBezierPath(roundedRect: firstItemWhite.bounds, cornerRadius: firstItemWhite.layer.cornerRadius).cgPath
        seconditemWhite.layer.shadowPath = UIBezierPath(roundedRect: seconditemWhite.bounds, cornerRadius: seconditemWhite.layer.cornerRadius).cgPath
        
        firstItemWhite.layer.shadowColor = UIColor.black.cgColor
        firstItemWhite.layer.shadowOpacity = 0.3
        firstItemWhite.layer.shadowOffset = CGSize(width: 1, height: 1)
        seconditemWhite.layer.shadowColor = UIColor.black.cgColor
        seconditemWhite.layer.shadowOpacity = 0.2
        seconditemWhite.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorColor = UIColor.clear
    }
    
    var data = ["mandiri what ?? 1", "mandiri what ??", "mandiri what ?? 2", "mandiri what ??", "mandiri what ?? 3", "mandiri what ??", "mandiri what ?? 4"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvcell", for: indexPath) as! TagihanTableCell
        cell.tanggalBox.layer.cornerRadius = cell.tanggalBox.frame.height / 2
        cell.descBox.layer.cornerRadius = cell.descBox.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
