//
//  ViewController.swift
//  CustomAlert
//
//  Created by ANUBHAV SINGH on 29/05/22.
//  Copyright © 2022 ANUBHAV SINGH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickSuccess(_ sender: Any) {
        AlertView.instance.showAlert(firstItem: "Milkcake", firstItemWeight: 1, firstCost: 200, secondItem: "Gulabjaumun", secondItemWeight: 2, secondCost: 320, thirdItem: "Namkeen", thirdItemWeight: 1, thirdCost: 70, forthItem: "Rasgulla", forthItemWeight: 4, forthCost: 330)
    }

}

