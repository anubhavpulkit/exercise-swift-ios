//
//  AlertView.swift
//  CustomAlert
//
//  Created by ANUBHAV SINGH on 29/05/22.
//  Copyright © 2022 ANUBHAV SINGH. All rights reserved.
//

import Foundation
import UIKit

class AlertView: UIView {
    
    static let instance = AlertView()
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var titleLbl: UILabel!

    @IBOutlet weak var proceedBtn: UIButton!
    @IBOutlet weak var declineBtn: UIButton!

    @IBOutlet weak var totalAmount: UILabel!

    @IBOutlet weak var firstItm: UILabel!
    @IBOutlet weak var secondItm: UILabel!
    @IBOutlet weak var thirdItm: UILabel!
    @IBOutlet weak var forthItm: UILabel!

    @IBOutlet weak var costFirst: UILabel!
    @IBOutlet weak var costSecond: UILabel!
    @IBOutlet weak var costThird: UILabel!
    @IBOutlet weak var costForth: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        alertView.layer.cornerRadius = 10
        
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.proceedBtn.layer.borderWidth = 0.5
        self.proceedBtn.layer.borderColor = UIColor.lightGray.cgColor
        self.declineBtn.layer.borderWidth = 0.5
        self.declineBtn.layer.borderColor = UIColor.lightGray.cgColor
    }

    func showAlert(firstItem: String, firstItemWeight: Int, firstCost: Int, secondItem: String, secondItemWeight: Int, secondCost: Int, thirdItem: String, thirdItemWeight: Int, thirdCost: Int, forthItem: String, forthItemWeight: Int, forthCost: Int) {
        self.firstItm.text = "\(firstItem)-\(firstItemWeight)kg"
        self.secondItm.text = "\(secondItem)-\(secondItemWeight)kg"
        self.thirdItm.text = "\(thirdItem)-\(thirdItemWeight)kg"
        self.forthItm.text = "\(forthItem)-\(forthItemWeight)kg"

        self.costFirst.text = "$\(firstCost)"
        self.costSecond.text = "$\(secondCost)"
        self.costThird.text = "$\(thirdCost)"
        self.costForth.text = "$\(forthCost)"

        let total = firstCost + secondCost + thirdCost + forthCost
        self.totalAmount.text = "$\(total)"

        UIApplication.shared.keyWindow?.addSubview(parentView)
    }
    
    @IBAction func onClickProccess(_ sender: Any) {
        parentView.removeFromSuperview()
        print("procced")
    }

    @IBAction func onClickDecline(_ sender: Any) {
        parentView.removeFromSuperview()
        print("decline")
    }

}
