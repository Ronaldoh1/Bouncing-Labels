//
//  ViewController.swift
//  Bouncing Labels
//
//  Created by Ronald Hernandez on 3/8/15.
//  Copyright (c) 2015 Wahoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //declared ivars

    var myFirstLabel: UILabel!
    var iPhoneLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        //Create the labels. 
        myFirstLabel = UILabel()



        iPhoneLabel = UILabel()


        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handledTapGesture:"))

        view.addGestureRecognizer(tapGesture)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.


    }
    func handledTapGesture(tapGerture: UITapGestureRecognizer){
        addLabels()


    }
    func addLabels(){

        myFirstLabel.text = "My First"

        myFirstLabel.font = UIFont.systemFontOfSize(25)
        myFirstLabel.sizeToFit()

        myFirstLabel.center = CGPoint(x: 100, y: 40)

        view.addSubview(myFirstLabel)

        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: nil, animations: {

            self.myFirstLabel.center = CGPoint(x: 100, y: 40 + 200)
            }, completion: nil)


        iPhoneLabel.text = "iPhone App"

        iPhoneLabel.font = UIFont.boldSystemFontOfSize(25)
        iPhoneLabel.sizeToFit()

        iPhoneLabel.center = CGPoint(x: 100, y: 100)

        view.addSubview(iPhoneLabel)

        iPhoneLabel.alpha = 0

        UIView.animateWithDuration(2.0, delay: 0.5 , usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations: {

            self.iPhoneLabel.center = CGPoint(x: 150, y: 90 + 200)
            self.iPhoneLabel.alpha = 1
            }, completion: nil)

    }



}

