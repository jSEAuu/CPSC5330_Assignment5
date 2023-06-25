//
//  ConvLogic.swift
//  CPSC5330_Assignment5
//
//  Created by Lisa Mefford on 6/24/23.
//

import Foundation

struct ConvLogic
{
    var switchBool = true
    
    mutating func setSwitch(_ switchValue: Bool)
    {
        if switchValue
        {
            switchBool = true
        }
        else
        {
            switchBool = false
        }
    }
}
