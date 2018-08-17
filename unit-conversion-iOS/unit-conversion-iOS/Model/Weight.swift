//
//  Weight.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/17/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import Foundation
class Weight {
    //Temp variables
    var returnWeight : Double = 0.00
    var tempGramValue : Double = 0.00
    
    //convertion types
    let grams = "grams"
    let kilogram = "kilogram"
    let pound = "pound"
    let ounce = "ounce"
    
    //function to convert grams to kilo
    func convertGramToKilo( weight : Double) -> Double{
        returnWeight = weight / 1000
        return (returnWeight)
    }
    //function to convert grams to pounds
    func convertGramToPounds( weight : Double) -> Double{
        returnWeight = weight * 0.00220462
        return (returnWeight)
    }
    //function to convert grams to ounce
    func convertGramToOunce( weight : Double) -> Double{
        returnWeight = weight * 0.035274
        return (returnWeight)
    }
    
    //function to other types to gram
    func convertToGram(fromType : String , weight : Double) -> Double{
        if fromType == kilogram{
            returnWeight =  weight * 1000
        }else if fromType == pound{
            returnWeight =  weight * 453.592
        }else if fromType == ounce{
            returnWeight =  weight * 28.3495
        }
        
        return (returnWeight)
    }
    
    //main function that returns all converion values
    func convertMain(fromType : String , toType : String , weight : Double) -> Double{
        
        if (fromType == grams && toType == kilogram) {
            tempGramValue = convertGramToKilo(weight: weight)
            returnWeight =  tempGramValue
            
        }else if (fromType == grams && toType == pound) {
            tempGramValue = convertGramToPounds(weight: weight)
            returnWeight =  tempGramValue
            
        }else if (fromType == grams && toType == ounce) {
            tempGramValue = convertGramToOunce(weight: weight)
            returnWeight =  tempGramValue
            
        }else if (fromType == kilogram && toType == grams) {
            
            tempGramValue = convertToGram(fromType: kilogram, weight: weight)
            returnWeight =  tempGramValue
            
        }else if (fromType == kilogram && toType == pound) {
            
            tempGramValue = convertToGram(fromType: kilogram, weight: weight)
            returnWeight =  convertGramToPounds(weight: tempGramValue)
            
        }else if (fromType == kilogram && toType == ounce) {
            
            tempGramValue = convertToGram(fromType: kilogram, weight: weight)
            returnWeight =  convertGramToOunce(weight: tempGramValue)
            
        }else if (fromType == pound && toType == grams) {
            
            tempGramValue = convertToGram(fromType: pound, weight: weight)
            returnWeight =  tempGramValue
            
        }else if (fromType == pound && toType == kilogram) {
            
            tempGramValue = convertToGram(fromType: pound, weight: weight)
            returnWeight =  convertGramToKilo(weight: tempGramValue)
            
        }else if (fromType == pound && toType == ounce) {
            
            tempGramValue = convertToGram(fromType: pound, weight: weight)
            returnWeight =  convertGramToOunce(weight: tempGramValue)
            
        }else if (fromType == ounce && toType == grams) {
            
            tempGramValue = convertToGram(fromType: ounce, weight: weight)
            returnWeight =  tempGramValue
            
        }else if (fromType == ounce && toType == kilogram) {
            
            tempGramValue = convertToGram(fromType: ounce, weight: weight)
            returnWeight =  convertGramToKilo(weight: tempGramValue)
            
        }else if (fromType == ounce && toType == pound) {
            
            tempGramValue = convertToGram(fromType: ounce, weight: weight)
            returnWeight =  convertGramToPounds(weight: tempGramValue)
            
        }
        
        return (returnWeight)
    }
    
}

