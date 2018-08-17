//
//  SecondViewController.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/16/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import UIKit

class WeightVC: UIViewController {

    @IBOutlet weak var gramTxt: UITextField!
    @IBOutlet weak var killoTxt: UITextField!
    @IBOutlet weak var poundTxt: UITextField!
    @IBOutlet weak var ounceTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gramCovert(_ sender: Any) {
        if let gramTxt = gramTxt.text {
            if let gramsW = Double(gramTxt){
                setToTextBoxes(weight: gramsW, inputWeightType: "grams")
            }
        }
    }
    
    @IBAction func killoConvert(_ sender: Any) {
        if let killoTxt = killoTxt.text {
            if let killoW = Double(killoTxt){
                setToTextBoxes(weight: killoW, inputWeightType: "kilogram")
            }
        }
    }
    
    @IBAction func poundConvert(_ sender: Any) {
        if let poundTxt = poundTxt.text {
            if let poundW = Double(poundTxt){
                setToTextBoxes(weight: poundW, inputWeightType: "pound")
            }
        }
    }
    @IBAction func ounceConvert(_ sender: Any) {
        if let ounceTxt = ounceTxt.text {
            if let ounceW = Double(ounceTxt){
                setToTextBoxes(weight: ounceW, inputWeightType: "ounce")
            }
        }
    }
    
    @IBAction func clearGramOnCLick(_ sender: Any) {
        clearTextBoxed()
    }
    @IBAction func clearKiloOnCLick(_ sender: Any) {
        clearTextBoxed()
    }
    
    @IBAction func clearPundOnClick(_ sender: Any) {
        clearTextBoxed()
    }
    @IBAction func clearOunceOnClick(_ sender: Any) {
        clearTextBoxed()
    }
    
    func setToTextBoxes(weight : Double , inputWeightType :  String){
        let grams = "grams"
        let kilogram = "kilogram"
        let pound = "pound"
        let ounce = "ounce"
        
        let weightC =  Weight()
        
        if inputWeightType == grams{
            killoTxt.text = "\(weightC.convertMain(fromType: grams, toType: kilogram, weight: weight))"
            poundTxt.text = "\(weightC.convertMain(fromType: grams, toType: pound, weight: weight))"
            ounceTxt.text = "\(weightC.convertMain(fromType: grams, toType: ounce, weight: weight))"
        }else if inputWeightType == kilogram{
            gramTxt.text = "\(weightC.convertMain(fromType: kilogram, toType: grams, weight: weight))"
            poundTxt.text = "\(weightC.convertMain(fromType: kilogram, toType: pound, weight: weight))"
            ounceTxt.text = "\(weightC.convertMain(fromType: kilogram, toType: ounce, weight: weight))"
        }else if inputWeightType == pound{
            gramTxt.text = "\(weightC.convertMain(fromType: pound, toType: grams, weight: weight))"
            killoTxt.text = "\(weightC.convertMain(fromType: pound, toType: kilogram, weight: weight))"
            ounceTxt.text = "\(weightC.convertMain(fromType: pound, toType: ounce, weight: weight))"
        }else if inputWeightType == ounce{
            gramTxt.text = "\(weightC.convertMain(fromType: ounce, toType: grams, weight: weight))"
            killoTxt.text = "\(weightC.convertMain(fromType: ounce, toType: kilogram, weight: weight))"
            poundTxt.text = "\(weightC.convertMain(fromType: ounce, toType: pound, weight: weight))"
        }
    }
    
    func clearTextBoxed(){
        gramTxt.text = ""
        killoTxt.text = ""
        poundTxt.text = ""
        ounceTxt.text = ""
    }

}

