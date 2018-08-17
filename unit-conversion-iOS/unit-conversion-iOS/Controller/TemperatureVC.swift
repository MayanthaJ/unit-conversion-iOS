//
//  FirstViewController.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/16/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import UIKit

class TemperatureVC: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var celciusTxt: UITextField!
    @IBOutlet weak var fahrenheitTxt: UITextField!
    @IBOutlet weak var kelvinTxt: UITextField!
    
    //convertion types
    let celcius = "celcius"
    let fahrenheit = "fahrenheit"
    let kelvin = "kelvin"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.celciusTxt.delegate = self
        self.fahrenheitTxt.delegate = self
        self.kelvinTxt.delegate = self

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hide keypad when user touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //calculate function calls
    //convert celcius
    @IBAction func celciusConvert(_ sender: Any) {
        if let celciusTxt = celciusTxt.text {
            if let celciusW = Double(celciusTxt){
                setToTextBoxes(temperature: celciusW, inputTempType: celcius)
            }
        }
    }
    
    //convert fahrenheit
    @IBAction func fahrenheitConvert(_ sender: Any) {
        if let fahrenheitTxt = fahrenheitTxt.text {
            if let fahrenheitW = Double(fahrenheitTxt){
                setToTextBoxes(temperature: fahrenheitW, inputTempType: fahrenheit)
            }
        }
    }
    
    //convert kelvin
    @IBAction func kelvinConvert(_ sender: Any) {
        if let kelvinTxt = kelvinTxt.text {
            if let kelvinW = Double(kelvinTxt){
                setToTextBoxes(temperature: kelvinW, inputTempType: kelvin)
            }
        }
    }
    
    //clear feileds when click on other textfields
    @IBAction func clearCelciusOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    @IBAction func clearFahrenheitOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    @IBAction func clearKelvinOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    //main functions that handles temperature convertion class and set converted values to the textfields
    func setToTextBoxes(temperature : Double , inputTempType :  String){
        
        let tempC = Temperature()
        
        if inputTempType == celcius{
            fahrenheitTxt.text = "\(tempC.convertMain(fromType: celcius, toType: fahrenheit, temperature: temperature))"
            kelvinTxt.text = "\(tempC.convertMain(fromType: celcius, toType: kelvin, temperature: temperature))"
        }else if inputTempType == fahrenheit{
            celciusTxt.text = "\(tempC.convertMain(fromType: fahrenheit, toType: celcius, temperature: temperature))"
            kelvinTxt.text = "\(tempC.convertMain(fromType: fahrenheit, toType: kelvin, temperature: temperature))"
        }else if inputTempType == kelvin{
            celciusTxt.text = "\(tempC.convertMain(fromType: kelvin, toType: celcius, temperature: temperature))"
            fahrenheitTxt.text = "\(tempC.convertMain(fromType: kelvin, toType: fahrenheit, temperature: temperature))"
        }
    }
    
    //function that clears all textfeilds
    func clearTextBoxes(){
        celciusTxt.text = ""
        fahrenheitTxt.text = ""
        kelvinTxt.text = ""
    }
    
}

