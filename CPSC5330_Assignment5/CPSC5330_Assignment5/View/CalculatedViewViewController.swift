//
//  CalculatedViewViewController.swift
//  CPSC5330_Assignment5
//
//  Created by Lisa Mefford on 6/24/23.
//

import UIKit

class CalculatedViewViewController: UIViewController {

    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var pesoConvAmt: UILabel!
    @IBOutlet weak var rupeeConvAmt: UILabel!
    @IBOutlet weak var euroConvAmt: UILabel!
    @IBOutlet weak var yenConvAmt: UILabel!
    
    @IBOutlet weak var pesoLabelText: UILabel!
    @IBOutlet weak var rupeeLabelText: UILabel!
    @IBOutlet weak var euroLabelText: UILabel!
    @IBOutlet weak var yenLabelText: UILabel!
    
    var amountTwo = ""
    var pesoTextTwo = ""
    var rupeeTextTwo = ""
    var euroTextTwo = ""
    var yenTextTwo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountLabel.text = "$ \(amountTwo)"
        
        if pesoTextTwo != ""
        {
            pesoConvAmt.text = pesoTextTwo
        }
        else
        {
            pesoConvAmt.isHidden = true
            pesoLabelText.isHidden = true
        }
        
        if rupeeTextTwo != ""
        {
            rupeeConvAmt.text = rupeeTextTwo
        }
        else
        {
            rupeeConvAmt.isHidden = true
            rupeeLabelText.isHidden = true
        }
        
        if euroTextTwo != ""
        {
            euroConvAmt.text = euroTextTwo
        }
        else
        {
            euroConvAmt.isHidden = true
            euroLabelText.isHidden = true
        }
        
        if yenTextTwo != ""
        {
            yenConvAmt.text = yenTextTwo
        }
        else
        {
            yenConvAmt.isHidden = true
            yenLabelText.isHidden = true
        }
        
    }

}
