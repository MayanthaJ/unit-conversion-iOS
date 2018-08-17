//
//  Speed.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/17/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import Foundation
class Speed{
    //Temp variables
    var returnSpeed : Double = 0.00
    var tempmeterPerSecValue : Double = 0.00
    
    //convertion types
    let meterPerSec = "meterPerSec"
    let feetPerMin = "feetPerMin"
    let kilometerPerHour = "kilometerPerHour"
    let milesPerHour = "milesPerHour"
    
    //function to convert grams to feetPerMin
    func convertMeterPerSecToFeetPerMin( speed : Double) -> Double{
        returnSpeed = speed * 196.85
        return (returnSpeed)
    }
    //function to convert grams to kilometerPerHour
    func converMterPerSecoKilometerPerHour( speed : Double) -> Double{
        returnSpeed = speed * 3.6
        return (returnSpeed)
    }
    //function to convert grams to milesPerHour
    func convertMeterPerSecToMilesPerHour( speed : Double) -> Double{
        returnSpeed = speed * 2.236936
        return (returnSpeed)
    }
    
    //function to other types to meterPerSec
    func convertToMeterPerSec(fromType : String , speed : Double) -> Double{
        if fromType == feetPerMin{
            returnSpeed =  speed / 196.85
        }else if fromType == kilometerPerHour{
            returnSpeed =  speed / 3.6
        }else if fromType == milesPerHour{
            returnSpeed =  speed / 2.236936
        }
        
        return (returnSpeed)
    }
    
    //main function that returns all converion values
    func convertMain(fromType : String , toType : String , speed : Double) -> Double{
        
        if (fromType == meterPerSec && toType == feetPerMin) {
            tempmeterPerSecValue = convertMeterPerSecToFeetPerMin(speed: speed)
            returnSpeed =  tempmeterPerSecValue
            
        }else if (fromType == meterPerSec && toType == kilometerPerHour) {
            tempmeterPerSecValue = converMterPerSecoKilometerPerHour(speed: speed)
            returnSpeed =  tempmeterPerSecValue
            
        }else if (fromType == meterPerSec && toType == milesPerHour) {
            tempmeterPerSecValue = convertMeterPerSecToMilesPerHour(speed: speed)
            returnSpeed =  tempmeterPerSecValue
            
        }else if (fromType == feetPerMin && toType == meterPerSec) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: feetPerMin, speed: speed)
            returnSpeed =  tempmeterPerSecValue
            
        }else if (fromType == feetPerMin && toType == kilometerPerHour) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: feetPerMin, speed: speed)
            returnSpeed =  converMterPerSecoKilometerPerHour(speed: tempmeterPerSecValue)
            
        }else if (fromType == feetPerMin && toType == milesPerHour) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: feetPerMin, speed: speed)
            returnSpeed =  convertMeterPerSecToMilesPerHour(speed: tempmeterPerSecValue)
            
        }else if (fromType == kilometerPerHour && toType == meterPerSec) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: kilometerPerHour, speed: speed)
            returnSpeed =  tempmeterPerSecValue
            
        }else if (fromType == kilometerPerHour && toType == feetPerMin) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: kilometerPerHour, speed: speed)
            returnSpeed =  convertMeterPerSecToFeetPerMin(speed: tempmeterPerSecValue)
            
        }else if (fromType == kilometerPerHour && toType == milesPerHour) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: kilometerPerHour, speed: speed)
            returnSpeed =  convertMeterPerSecToMilesPerHour(speed: tempmeterPerSecValue)
            
        }else if (fromType == milesPerHour && toType == meterPerSec) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: milesPerHour, speed: speed)
            returnSpeed =  tempmeterPerSecValue
            
        }else if (fromType == milesPerHour && toType == feetPerMin) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: milesPerHour, speed: speed)
            returnSpeed =  convertMeterPerSecToFeetPerMin(speed: tempmeterPerSecValue)
            
        }else if (fromType == milesPerHour && toType == kilometerPerHour) {
            
            tempmeterPerSecValue = convertToMeterPerSec(fromType: milesPerHour, speed: speed)
            returnSpeed =  converMterPerSecoKilometerPerHour(speed: tempmeterPerSecValue)
            
        }
        
        return (returnSpeed)
    }
}
