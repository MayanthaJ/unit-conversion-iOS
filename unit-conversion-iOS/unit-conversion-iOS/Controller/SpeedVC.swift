//
//  SpeedVC.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/17/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import UIKit

class SpeedVC: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var meterPerSecTxt: UITextField!
    @IBOutlet weak var feetPerMinTxt: UITextField!
    @IBOutlet weak var kilometerPerHourTxt: UITextField!
    @IBOutlet weak var milesPerHourTxt: UITextField!
   
    //convertion types
    let meterPerSec = "meterPerSec"
    let feetPerMin = "feetPerMin"
    let kilometerPerHour = "kilometerPerHour"
    let milesPerHour = "milesPerHour"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.meterPerSecTxt.delegate = self
        self.feetPerMinTxt.delegate = self
        self.kilometerPerHourTxt.delegate = self
        self.milesPerHourTxt.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Hide keypad when user touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func MeterPerSecConvert(_ sender: Any) {
        if let meterPerSecTxt = meterPerSecTxt.text {
            if let meterPerSecW = Double(meterPerSecTxt){
                setToTextBoxes(speed: meterPerSecW, inputSpeedType: meterPerSec)
            }
        }
    }
    
    @IBAction func feetPerMinConvert(_ sender: Any) {
        if let feetPerMinTxt = feetPerMinTxt.text {
            if let feetPerMinW = Double(feetPerMinTxt){
                setToTextBoxes(speed: feetPerMinW, inputSpeedType: feetPerMin)
            }
        }
    }
    
    @IBAction func kilometerPerHourConvert(_ sender: Any) {
        if let kilometerPerHourTxt = kilometerPerHourTxt.text {
            if let kilometerPerHourW = Double(kilometerPerHourTxt){
                setToTextBoxes(speed: kilometerPerHourW, inputSpeedType: kilometerPerHour)
            }
        }
    }
    
    @IBAction func milesPerHourConvert(_ sender: Any) {
        if let milesPerHourTxt = milesPerHourTxt.text {
            if let milesPerHourW = Double(milesPerHourTxt){
                setToTextBoxes(speed: milesPerHourW, inputSpeedType: milesPerHour)
            }
        }
    }
    
    @IBAction func clearMeterPerSecOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    @IBAction func clearFeetPerMinOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    @IBAction func clearKilometerPerHourOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    @IBAction func clearMilesPerHourOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    //main functions that handles weight convertion class and set converted values to the textfields
    func setToTextBoxes(speed : Double , inputSpeedType :  String){
        let speedC =  Speed()
        
        if inputSpeedType == meterPerSec{
            feetPerMinTxt.text = "\(speedC.convertMain(fromType: meterPerSec, toType: feetPerMin, speed: speed))"
            kilometerPerHourTxt.text = "\(speedC.convertMain(fromType: meterPerSec, toType: kilometerPerHour, speed: speed))"
            milesPerHourTxt.text = "\(speedC.convertMain(fromType: meterPerSec, toType: milesPerHour, speed: speed))"
        }else if inputSpeedType == feetPerMin{
            meterPerSecTxt.text = "\(speedC.convertMain(fromType: feetPerMin, toType: meterPerSec, speed: speed))"
            kilometerPerHourTxt.text = "\(speedC.convertMain(fromType: feetPerMin, toType: kilometerPerHour, speed: speed))"
            milesPerHourTxt.text = "\(speedC.convertMain(fromType: feetPerMin, toType: milesPerHour, speed: speed))"
        }else if inputSpeedType == kilometerPerHour{
            meterPerSecTxt.text = "\(speedC.convertMain(fromType: kilometerPerHour, toType: meterPerSec, speed: speed))"
            feetPerMinTxt.text = "\(speedC.convertMain(fromType: kilometerPerHour, toType: feetPerMin, speed: speed))"
            milesPerHourTxt.text = "\(speedC.convertMain(fromType: kilometerPerHour, toType: milesPerHour, speed: speed))"
        }else if inputSpeedType == milesPerHour{
            meterPerSecTxt.text = "\(speedC.convertMain(fromType: milesPerHour, toType: meterPerSec, speed: speed))"
            feetPerMinTxt.text = "\(speedC.convertMain(fromType: milesPerHour, toType: feetPerMin, speed: speed))"
            kilometerPerHourTxt.text = "\(speedC.convertMain(fromType: milesPerHour, toType: kilometerPerHour, speed: speed))"
        }
    }
    
    //function that clears all textfeilds
    func clearTextBoxes(){
        meterPerSecTxt.text = ""
        feetPerMinTxt.text = ""
        kilometerPerHourTxt.text = ""
        milesPerHourTxt.text = ""
    }
    
}
