//
//  Distance.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/17/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import Foundation
class Distance{
    //Temp variables
    var returnDistance : Double = 0.00
    var tempMeterValue : Double = 0.00
    
    //convertion types
    let meter = "meter"
    let foot = "foot"
    let yard = "yard"
    let kilometer = "kilometer"
    let mile = "mile"
    
    //function to convert meter to foot
    func convertMeterToFoot( distance : Double) -> Double{
        returnDistance = distance * 3.28084
        return (returnDistance)
    }
    //function to convert meter to yard
    func convertMeterToYard( distance : Double) -> Double{
        returnDistance = distance * 1.09361
        return (returnDistance)
    }
    //function to convert meter to kilometer
    func convertMeterToKilometer( distance : Double) -> Double{
        returnDistance = distance * 0.001
        return (returnDistance)
    }
    
    //function to convert meter to mile
    func convertMeterToMile( distance : Double) -> Double{
        returnDistance = distance * 0.000621371
        return (returnDistance)
    }
    
    //function to other types to meter
    func convertToMeter(fromType : String , distance : Double) -> Double{
        if fromType == foot{
            returnDistance =  distance * 0.3048
        }else if fromType == yard{
            returnDistance =  distance * 0.9144
        }else if fromType == kilometer{
            returnDistance =  distance * 1000
        }else if fromType == mile{
            returnDistance =  distance * 1609.34
        }
        
        return (returnDistance)
    }
    
    //main function that returns all converion values
    func convertMain(fromType : String , toType : String , distance : Double) -> Double{
        
        if (fromType == meter && toType == foot) {
            
            tempMeterValue = convertMeterToFoot(distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == meter && toType == yard) {
            
            tempMeterValue = convertMeterToYard(distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == meter && toType == kilometer) {
            
            tempMeterValue = convertMeterToKilometer(distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == meter && toType == mile) {
            
            tempMeterValue = convertMeterToMile(distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == foot && toType == meter) {
            
            tempMeterValue = convertToMeter(fromType: foot, distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == foot && toType == yard) {
            
            tempMeterValue = convertToMeter(fromType: foot, distance: distance)
            returnDistance =  convertMeterToYard(distance: tempMeterValue)
            
        }else if (fromType == foot && toType == kilometer) {
            
            tempMeterValue = convertToMeter(fromType: foot, distance: distance)
            returnDistance =  convertMeterToKilometer(distance: tempMeterValue)
            
        }else if (fromType == foot && toType == mile) {
    
            tempMeterValue = convertToMeter(fromType: foot, distance: distance)
            returnDistance =  convertMeterToMile(distance: tempMeterValue)
            
        }else if (fromType == yard && toType == meter) {
            
            tempMeterValue = convertToMeter(fromType: yard, distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == yard && toType == foot) {
            
            tempMeterValue = convertToMeter(fromType: yard, distance: distance)
            returnDistance =  convertMeterToFoot(distance: tempMeterValue)
            
        }else if (fromType == yard && toType == kilometer) {
            
            tempMeterValue = convertToMeter(fromType: yard, distance: distance)
            returnDistance =  convertMeterToKilometer(distance: tempMeterValue)
            
        }else if (fromType == yard && toType == mile) {
            
            tempMeterValue = convertToMeter(fromType: yard, distance: distance)
            returnDistance =  convertMeterToMile(distance: tempMeterValue)
            
        }else if (fromType == kilometer && toType == meter) {
            
            tempMeterValue = convertToMeter(fromType: kilometer, distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == kilometer && toType == foot) {
            
            tempMeterValue = convertToMeter(fromType: kilometer, distance: distance)
            returnDistance =  convertMeterToFoot(distance: tempMeterValue)
            
        }else if (fromType == kilometer && toType == yard) {
            
            tempMeterValue = convertToMeter(fromType: kilometer, distance: distance)
            returnDistance =  convertMeterToYard(distance: tempMeterValue)
            
        }else if (fromType == kilometer && toType == mile) {
            
            tempMeterValue = convertToMeter(fromType: kilometer, distance: distance)
            returnDistance =  convertMeterToMile(distance: tempMeterValue)
            
        }else if (fromType == mile && toType == meter) {
            
            tempMeterValue = convertToMeter(fromType: mile, distance: distance)
            returnDistance =  tempMeterValue
            
        }else if (fromType == mile && toType == foot) {
            
            tempMeterValue = convertToMeter(fromType: mile, distance: distance)
            returnDistance =  convertMeterToFoot(distance: tempMeterValue)
            
        }else if (fromType == mile && toType == yard) {
            
            tempMeterValue = convertToMeter(fromType: mile, distance: distance)
            returnDistance =  convertMeterToYard(distance: tempMeterValue)
            
        }else if (fromType == mile && toType == kilometer) {
            
            tempMeterValue = convertToMeter(fromType: mile, distance: distance)
            returnDistance =  convertMeterToKilometer(distance: tempMeterValue)
            
        }
        
        return (returnDistance)
    }
}
