//
//  SecondViewController.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/16/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import UIKit

class WeightVC: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var gramTxt: UITextField!
    @IBOutlet weak var killoTxt: UITextField!
    @IBOutlet weak var poundTxt: UITextField!
    @IBOutlet weak var ounceTxt: UITextField!
    
    //convertion types
    let grams = "grams"
    let kilogram = "kilogram"
    let pound = "pound"
    let ounce = "ounce"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gramTxt.delegate = self
        self.killoTxt.delegate = self
        self.poundTxt.delegate = self
        self.ounceTxt.delegate = self
        
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
    
    //calculate functions
    //convert meters
    @IBAction func gramCovert(_ sender: Any) {
        if let gramTxt = gramTxt.text {
            if let gramsW = Double(gramTxt){
                setToTextBoxes(weight: gramsW, inputWeightType: grams)
            }
        }
    }
    
    //convert meters
    @IBAction func killoConvert(_ sender: Any) {
        if let killoTxt = killoTxt.text {
            if let killoW = Double(killoTxt){
                setToTextBoxes(weight: killoW, inputWeightType: kilogram)
            }
        }
    }
    
    //convert meters
    @IBAction func poundConvert(_ sender: Any) {
        if let poundTxt = poundTxt.text {
            if let poundW = Double(poundTxt){
                setToTextBoxes(weight: poundW, inputWeightType: pound)
            }
        }
    }
    
    //convert meters
    @IBAction func ounceConvert(_ sender: Any) {
        if let ounceTxt = ounceTxt.text {
            if let ounceW = Double(ounceTxt){
                setToTextBoxes(weight: ounceW, inputWeightType: ounce)
            }
        }
    }
    
    //clear feileds when click on other textfields
    @IBAction func clearGramOnCLick(_ sender: Any) {
        clearTextBoxes()
    }
    @IBAction func clearKiloOnCLick(_ sender: Any) {
        clearTextBoxes()
    }
    
    @IBAction func clearPundOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    @IBAction func clearOunceOnClick(_ sender: Any) {
        clearTextBoxes()
    }
    
    
    //main functions that handles weight convertion class and set converted values to the textfields
    func setToTextBoxes(weight : Double , inputWeightType :  String){
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
    
    //function that clears all textfeilds
    func clearTextBoxes(){
        gramTxt.text = ""
        killoTxt.text = ""
        poundTxt.text = ""
        ounceTxt.text = ""
    }

}

