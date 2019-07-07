//
//  ScavengerHuntVC.swift
//  Intel KTWD
//
//  Created by Melanie Cooray on 6/24/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class ScavengerHuntVC: UIViewController {
    
    var titleLabel: UILabel!
    
    var question1: UIView!
    var question2: UIView!
    var question3: UIView!
    var question4: UIView!
    var question5: UIView!
    var question6: UIView!
    
    var q1Label : UILabel!
    var q2Label : UILabel!
    var q3Label : UILabel!
    var q4Label : UILabel!
    var q5Label : UILabel!
    var q6Label : UILabel!
    
    let questions = ["Find one of the locations of the two hearts", "Name one of the founders of Intel", "Find a collaboration room on the 2nd floor of FM6", "Visit the FM7 cafe where the air shuttle boards", "Find where Intel Employees go to get their laptops fixed", "What Intel slogan is on the poster in FM3 2nd floor?"]
    
    let darkBlue = UIColor(red: 18/255, green: 124/255, blue: 193/255, alpha: 1.0)
    let lightBlue = UIColor(red: 206/255, green: 229/255, blue: 255/255, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        initUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    @objc func q1Clicked() {
        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }

}
