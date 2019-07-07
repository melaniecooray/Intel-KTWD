//
//  ScavengerHuntVC - uisetup.swift
//  Intel KTWD
//
//  Created by Melanie Cooray on 6/26/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension ScavengerHuntVC {
    
    func initUI() {
        setupTitle()
        setupQ1()
        setupQ2()
        setupQ3()
        setupQ4()
        setupQ5()
        setupQ6()
    }
    
    func setupTitle() {
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        titleLabel.center = CGPoint(x: view.frame.width/2, y: 125)
        titleLabel.text = "Scavenger Hunt"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Verdana-Bold", size: 23)
        titleLabel.textColor = darkBlue
        view.addSubview(titleLabel)
    }
    
    func setupQ1(){
        question1 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 0.90, height: self.view.frame.height * 0.1))
        question1.center = CGPoint(x: view.frame.width/2, y: titleLabel.frame.maxY + 50)
        question1.backgroundColor = lightBlue
        question1.layer.cornerRadius = 10
        question1.layer.masksToBounds = false
        question1.layer.shadowOffset = CGSize(width: 0, height: 3)
        question1.layer.shadowRadius = 5
        question1.layer.shadowOpacity = 0.5
        view.addSubview(question1)
        q1Label = UILabel(frame: CGRect(x: 0, y: 0, width: question1.frame.width * 0.8, height: question1.frame.height))
        q1Label.text = questions[0]
        q1Label.textAlignment = .center
        q1Label.lineBreakMode = .byWordWrapping
        q1Label.numberOfLines = 2
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(q1Clicked))
        gesture.numberOfTapsRequired = 1
        q1Label?.isUserInteractionEnabled = true
        q1Label?.addGestureRecognizer(gesture)
        question1.addSubview(q1Label)
    }
    
    func setupQ2() {
        question2 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 0.90, height: self.view.frame.height * 0.1))
        question2.center = CGPoint(x: view.frame.width/2, y: question1.frame.maxY + 65)
        question2.backgroundColor = lightBlue
        question2.layer.cornerRadius = 10
        question2.layer.masksToBounds = false
        question2.layer.shadowOffset = CGSize(width: 0, height: 3)
        question2.layer.shadowRadius = 5
        question2.layer.shadowOpacity = 0.5
        view.addSubview(question2)
        q2Label = UILabel(frame: CGRect(x: 0, y: 0, width: question2.frame.width * 0.8, height: question2.frame.height))
        q2Label.text = questions[1]
        q2Label.textAlignment = .center
        q2Label.lineBreakMode = .byWordWrapping
        q2Label.numberOfLines = 2
        question2.addSubview(q2Label)
    }
    
    func setupQ3() {
        question3 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 0.90, height: self.view.frame.height * 0.1))
        question3.center = CGPoint(x: view.frame.width/2, y: question2.frame.maxY + 65)
        question3.backgroundColor = lightBlue
        question3.layer.cornerRadius = 10
        question3.layer.masksToBounds = false
        question3.layer.shadowOffset = CGSize(width: 0, height: 3)
        question3.layer.shadowRadius = 5
        question3.layer.shadowOpacity = 0.5
        view.addSubview(question3)
        q3Label = UILabel(frame: CGRect(x: 0, y: 0, width: question3.frame.width * 0.8, height: question3.frame.height))
        q3Label.text = questions[2]
        q3Label.textAlignment = .center
        q3Label.lineBreakMode = .byWordWrapping
        q3Label.numberOfLines = 2
        question3.addSubview(q3Label)
    }
    
    func setupQ4() {
        question4 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 0.90, height: self.view.frame.height * 0.1))
        question4.center = CGPoint(x: view.frame.width/2, y: question3.frame.maxY + 65)
        question4.backgroundColor = lightBlue
        question4.layer.cornerRadius = 10
        question4.layer.masksToBounds = false
        question4.layer.shadowOffset = CGSize(width: 0, height: 3)
        question4.layer.shadowRadius = 5
        question4.layer.shadowOpacity = 0.5
        view.addSubview(question4)
        q4Label = UILabel(frame: CGRect(x: 0, y: 0, width: question4.frame.width * 0.8, height: question4.frame.height))
        q4Label.text = questions[3]
        q4Label.textAlignment = .center
        q4Label.lineBreakMode = .byWordWrapping
        q4Label.numberOfLines = 2
        question4.addSubview(q4Label)
    }
    
    func setupQ5() {
        question5 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 0.90, height: self.view.frame.height * 0.1))
        question5.center = CGPoint(x: view.frame.width/2, y: question4.frame.maxY + 65)
        question5.backgroundColor = lightBlue
        question5.layer.cornerRadius = 10
        question5.layer.masksToBounds = false
        question5.layer.shadowOffset = CGSize(width: 0, height: 3)
        question5.layer.shadowRadius = 5
        question5.layer.shadowOpacity = 0.5
        view.addSubview(question5)
        q5Label = UILabel(frame: CGRect(x: 0, y: 0, width: question5.frame.width * 0.8, height: question5.frame.height))
        q5Label.text = questions[4]
        q5Label.textAlignment = .center
        q5Label.lineBreakMode = .byWordWrapping
        q5Label.numberOfLines = 2
        question5.addSubview(q5Label)
    }
    
    func setupQ6() {
        question6 = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 0.90, height: self.view.frame.height * 0.1))
        question6.center = CGPoint(x: view.frame.width/2, y: question5.frame.maxY + 65)
        question6.backgroundColor = lightBlue
        question6.layer.cornerRadius = 10
        question6.layer.masksToBounds = false
        question6.layer.shadowOffset = CGSize(width: 0, height: 3)
        question6.layer.shadowRadius = 5
        question6.layer.shadowOpacity = 0.5
        view.addSubview(question6)
        q6Label = UILabel(frame: CGRect(x: 0, y: 0, width: question6.frame.width * 0.8, height: question6.frame.height))
        q6Label.text = questions[5]
        q6Label.textAlignment = .center
        q6Label.lineBreakMode = .byWordWrapping
        q6Label.numberOfLines = 2
        question6.addSubview(q6Label)
    }
    
}
