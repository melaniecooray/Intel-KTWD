//
//  HomeVC.swift
//  Intel KTWD
//
//  Created by Melanie Cooray on 6/20/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    var titleLabel : UILabel!
    
    var workshopLabel : UILabel!
    
    var workshopBox : UIView!
    var workshopTitle : UILabel!
    var workshopLocation : UILabel!
    var workshopTime : UILabel!
    
    var topLeftButton : UIButton!
    var topRightButton : UIButton!
    var bottomRightButton : UIButton!
    var bottomLeftButton : UIButton!
    
    let color = UIColor(red: 18/255, green: 124/255, blue: 193/255, alpha: 1.0)
    let lightBlue = UIColor(red: 206/255, green: 229/255, blue: 255/255, alpha: 1.0)
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = true
        initUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @objc func shButtonClicked() {
        performSegue(withIdentifier: "toScavengerHunt", sender: self)
    }
    
    @objc func cmButtonClicked() {
        performSegue(withIdentifier: "toCampusMap", sender: self)
    }
    
    @objc func awButtonClicked() {
        performSegue(withIdentifier: "toAllWorkshops", sender: self)
    }
    
    @objc func ocButtonClicked() {
        performSegue(withIdentifier: "toOpenClasses", sender: self)
    }
    
}
