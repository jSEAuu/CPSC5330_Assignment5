//
//  ViewController.swift
//  CPSC5330_Assignment5
//
//  Created by Lisa Mefford on 6/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var theConvButton: UIButton!
    var convLogic = ConvLogic()
    var pesoText = ""
    var rupeeText = ""
    var euroText = ""
    var yenText = ""
    var amountTwo = ""
    var pesoTextTwo = ""
    var rupeeTextTwo = ""
    var euroTextTwo = ""
    var yenTextTwo = ""
    
    //yenLabel.text = "\(convAmtInt(amount.text!) * 8)"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func convAmtInt(_ userInput: String) -> Int
    {
        return Int(userInput)!
    }

    @IBAction func pesoSwitch(_ sender: UISwitch)
    {
        convLogic.setSwitch(sender.isOn)
        
        if sender.isOn
        {
            pesoText = "\(convAmtInt(amount.text!) * 17)"
        }
        else
        {
            pesoText = ""
        }
        
    }
    
    @IBAction func rupeeSwitch(_ sender: UISwitch)
    {
        convLogic.setSwitch(sender.isOn)
        
        if sender.isOn
        {
            rupeeText = "\(convAmtInt(amount.text!) * 81)"
        }
        else
        {
            rupeeText = ""
        }
    }
    
    @IBAction func euroSwitch(_ sender: UISwitch)
    {
        convLogic.setSwitch(sender.isOn)
        
        if sender.isOn
        {
            euroText = "\(convAmtInt(amount.text!) * 1)"
        }
        else
        {
            euroText = ""
        }
    }
    
    @IBAction func yenSwitch(_ sender: UISwitch)
    {
        convLogic.setSwitch(sender.isOn)
        
        if sender.isOn
        {
            yenText = "\(convAmtInt(amount.text!) * 143)"
        }
        else
        {
            yenText = ""
        }
    }
    
        
    @IBAction func convertUSD(_ sender: UIButton)
    {
        
        if convAmtInt(amount.text!) >= 1
        {
            amountTwo = "\(convAmtInt(amount.text!) * 1)"
            amountTwo = "\(convAmtInt(amount.text!) * 1)"
            pesoTextTwo = pesoText
            rupeeTextTwo = rupeeText
            euroTextTwo = euroText
            yenTextTwo = yenText
            self.performSegue(withIdentifier: "toConvAmount", sender: self)
        }
        else
        {
            amount.text = "Error not Integer!"
            theConvButton.isEnabled = false
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvAmount"
        {
            let navigation = segue.destination as! CalculatedViewViewController
            navigation.amountTwo = amountTwo
            navigation.pesoTextTwo = pesoTextTwo
            navigation.rupeeTextTwo = rupeeTextTwo
            navigation.euroTextTwo = euroTextTwo
            navigation.yenTextTwo = yenTextTwo
        }
    }
}

