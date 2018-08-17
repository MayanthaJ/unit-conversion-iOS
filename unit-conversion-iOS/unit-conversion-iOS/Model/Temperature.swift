//
//  Temperature.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/17/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import Foundation
class Temperature{
    //Temp variables
    var returnTemperature : Double = 0.00
    var tempCelciusValue : Double = 0.00
    
    //convertion types
    let celcius = "celcius"
    let fahrenheit = "fahrenheit"
    let kelvin = "kelvin"
    
    //function to convert celcius to fahrenheit
    func convertCelciusToFahrenheit( temperature : Double) -> Double{
        returnTemperature = (temperature * 1.8) + 32
        return (returnTemperature)
    }
    //function to convert celcius to kelvin
    func convertCelciusToKelvin( temperature : Double) -> Double{
        returnTemperature = temperature + 273.15
        return (returnTemperature)
    }
    
    //function to other types to celcius
    func convertToCelcius(fromType : String , temperature : Double) -> Double{
        if fromType == fahrenheit{
            returnTemperature =  (temperature - 32) * 0.5556
        }else if fromType == kelvin{
            returnTemperature =  temperature - 273.15
        }
        
        return (returnTemperature)
    }
    
    //main function that returns all converion values
    func convertMain(fromType : String , toType : String , temperature : Double) -> Double{
        
        if (fromType == celcius && toType == fahrenheit) {
            tempCelciusValue = convertCelciusToFahrenheit(temperature: temperature)
            returnTemperature =  tempCelciusValue
            
        }else if (fromType == celcius && toType == kelvin) {
            tempCelciusValue = convertCelciusToKelvin(temperature: temperature)
            returnTemperature =  tempCelciusValue
            
        }else if (fromType == fahrenheit && toType == celcius) {
            
            tempCelciusValue = convertToCelcius(fromType: fahrenheit, temperature: temperature)
            returnTemperature =  tempCelciusValue
            
        }else if (fromType == fahrenheit && toType == kelvin) {
            
            tempCelciusValue = convertToCelcius(fromType: fahrenheit, temperature: temperature)
            returnTemperature =  convertCelciusToKelvin(temperature: tempCelciusValue)
            
        }else if (fromType == kelvin && toType == celcius) {
            
            tempCelciusValue = convertToCelcius(fromType: kelvin, temperature: temperature)
            returnTemperature =  tempCelciusValue
            
        }else if (fromType == kelvin && toType == fahrenheit) {
            
            tempCelciusValue = convertToCelcius(fromType: kelvin, temperature: temperature)
            returnTemperature =  convertCelciusToFahrenheit(temperature: tempCelciusValue)
            
        }
        
        return (returnTemperature)
    }
}
