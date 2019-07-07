//
//  HomeVC - uisetup.swift
//  Intel KTWD
//
//  Created by Melanie Cooray on 6/20/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension HomeVC {
    
    func initUI() {
        setupTitle()
        setupWorkshopTitle()
        setupWorkshopView()
        setupButtons()
    }
    
    func setupTitle() {
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        titleLabel.center = CGPoint(x: view.frame.width/2, y: 100)
        titleLabel.text = "Intel Kid To Work Day 2019"
        titleLabel.font = UIFont(name: "Verdana-Bold", size: 23)
        titleLabel.textColor = color
        titleLabel.textAlignment = .center
        view.addSubview(titleLabel)
    }
    
    func setupWorkshopTitle() {
        workshopLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        workshopLabel.center = CGPoint(x: view.frame.width/4, y: titleLabel.frame.maxY * 1.1)
        workshopLabel.text = "Workshop:"
        workshopLabel.textAlignment = .center
        view.addSubview(workshopLabel)
    }
    
    func setupWorkshopView() {
        workshopBox = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width * 0.8, height: view.frame.height * 0.25))
        workshopBox.center = CGPoint(x: view.frame.width/2, y: workshopLabel.frame.maxY + 100)
        workshopBox.backgroundColor = lightBlue
        workshopBox.layer.cornerRadius = 10
        workshopBox.layer.masksToBounds = false
        workshopBox.layer.shadowOffset = CGSize(width: -15, height: 20)
        workshopBox.layer.shadowRadius = 5
        workshopBox.layer.shadowOpacity = 0.5
        view.addSubview(workshopBox)
    }
    
    func setupButtons() {
        let rect = CGRect(x: 0, y: 0, width: view.frame.width * 0.38, height: view.frame.width * 0.38)
        topLeftButton = UIButton(frame: rect)
        topLeftButton.center = CGPoint(x: view.frame.width * 9/32, y: workshopBox.frame.maxY + 120)
        topLeftButton.backgroundColor = .white
        topLeftButton.layer.cornerRadius = 10
        topLeftButton.setTitle("Scavenger Hunt", for: .normal)
        topLeftButton.titleLabel?.lineBreakMode = .byWordWrapping
        topLeftButton.titleLabel?.numberOfLines = 2
        topLeftButton.titleLabel?.font = UIFont(name: "Arial", size: 25)
        topLeftButton.titleLabel?.textAlignment = .center
        topLeftButton.setTitleColor(color, for: .normal)
        topLeftButton.layer.borderColor = color.cgColor
        topLeftButton.layer.borderWidth = 5.0
        topLeftButton.addTarget(self, action: #selector(shButtonClicked), for: .touchUpInside)
        
        topRightButton = UIButton(frame: rect)
        topRightButton.center = CGPoint(x: view.frame.width * 23/32, y: workshopBox.frame.maxY + 120)
        topRightButton.backgroundColor = .white
        topRightButton.layer.cornerRadius = 10
        topRightButton.setTitle("Open Classes", for: .normal)
        topRightButton.titleLabel?.lineBreakMode = .byWordWrapping
        topRightButton.titleLabel?.numberOfLines = 2
        topRightButton.titleLabel?.font = UIFont(name: "Arial", size: 27)
        topRightButton.titleLabel?.textAlignment = .center
        topRightButton.setTitleColor(color, for: .normal)
        topRightButton.layer.borderColor = color.cgColor
        topRightButton.layer.borderWidth = 5.0
        topRightButton.addTarget(self, action: #selector(ocButtonClicked), for: .touchUpInside)
        
        bottomLeftButton = UIButton(frame: rect)
        bottomLeftButton.center = CGPoint(x: view.frame.width * 9/32, y: topLeftButton.frame.maxY + 100)
        bottomLeftButton.backgroundColor = .white
        bottomLeftButton.layer.cornerRadius = 10
        bottomLeftButton.setTitle("Campus Map", for: .normal)
        bottomLeftButton.titleLabel?.lineBreakMode = .byWordWrapping
        bottomLeftButton.titleLabel?.numberOfLines = 2
        bottomLeftButton.titleLabel?.font = UIFont(name: "Arial", size: 27)
        bottomLeftButton.titleLabel?.textAlignment = .center
        bottomLeftButton.setTitleColor(color, for: .normal)
        bottomLeftButton.layer.borderColor = color.cgColor
        bottomLeftButton.layer.borderWidth = 5.0
        bottomLeftButton.addTarget(self, action: #selector(cmButtonClicked), for: .touchUpInside)
        
        bottomRightButton = UIButton(frame: rect)
        bottomRightButton.center = CGPoint(x: view.frame.width * 23/32, y: topRightButton.frame.maxY + 100)
        bottomRightButton.backgroundColor = .white
        bottomRightButton.layer.cornerRadius = 10
        bottomRightButton.setTitle("All Workshops", for: .normal)
        bottomRightButton.titleLabel?.lineBreakMode = .byWordWrapping
        bottomRightButton.titleLabel?.numberOfLines = 2
        bottomRightButton.titleLabel?.font = UIFont(name: "Arial", size: 27)
        bottomRightButton.titleLabel?.textAlignment = .center
        bottomRightButton.setTitleColor(color, for: .normal)
        bottomRightButton.layer.borderColor = color.cgColor
        bottomRightButton.layer.borderWidth = 5.0
        bottomRightButton.addTarget(self, action: #selector(awButtonClicked), for: .touchUpInside)
        
        
        view.addSubview(topLeftButton)
        view.addSubview(topRightButton)
        view.addSubview(bottomLeftButton)
        view.addSubview(bottomRightButton)
    }
    
}
