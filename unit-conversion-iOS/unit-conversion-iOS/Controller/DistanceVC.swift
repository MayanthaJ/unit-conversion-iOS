//
//  DistanceVC.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/17/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import UIKit

class DistanceVC: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var meterTxt: UITextField!
    @IBOutlet weak var footTxt: UITextField!
    @IBOutlet weak var yardTxt: UITextField!
    @IBOutlet weak var kilometerTxt: UITextField!
    @IBOutlet weak var mileTxt: UITextField!
    
    //convertion types
    let meter = "meter"
    let foot = "foot"
    let yard = "yard"
    let kilometer = "kilometer"
    let mile = "mile"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.meterTxt.delegate = self
        self.footTxt.delegate = self
        self.yardTxt.delegate = self
        self.yardTxt.delegate = self
        self.mileTxt.delegate = self
        
        // Do any additional setup after loading the view.
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
    @IBAction func meterConvert(_ sender: Any) {
        if let meterTxt = meterTxt.text {
            if let meterW = Double(meterTxt){
                setToTextBoxes(distance: meterW, inputDistanceType: meter)
            }
        }
    }
    
    //convert foot
    @IBAction func footConvert(_ sender: Any) {
        if let footTxt = footTxt.text {
            if let footW = Double(footTxt){
                setToTextBoxes(distance: footW, inputDistanceType: foot)
            }
        }
    }
    
    //convert yard
    @IBAction func yardConvert(_ sender: Any) {
        if let yardTxt = yardTxt.text {
            if let yardW = Double(yardTxt){
                setToTextBoxes(distance: yardW, inputDistanceType: yard)
            }
        }
    }
    
    //convert kilometer
    @IBAction func kilometerConvert(_ sender: Any) {
        if let kilometerTxt = kilometerTxt.text {
            if let kilometerW = Double(kilometerTxt){
                setToTextBoxes(distance: kilometerW, inputDistanceType: kilometer)
            }
        }
    }
    
    //convert mile
    @IBAction func mileConvert(_ sender: Any) {
        if let mileTxt = mileTxt.text {
            if let mileW = Double(mileTxt){
                setToTextBoxes(distance: mileW, inputDistanceType: mile)
            }
        }
    }
    
    //clear feileds when click on other textfeild
    @IBAction func clearMeterOnClick(_ sender: Any) {
        clearTextBoxed()
    }
    
    @IBAction func clearFootOnClick(_ sender: Any) {
        clearTextBoxed()
    }
    
    @IBAction func clearYardOnClick(_ sender: Any) {
        clearTextBoxed()
    }
    
    @IBAction func clearKilometerOnClick(_ sender: Any) {
        clearTextBoxed()
    }
    
    @IBAction func clearMileOnClick(_ sender: Any) {
        clearTextBoxed()
    }
    
     //main functions that handles distance convertion class and set converted values to the textfeilds
    func setToTextBoxes(distance : Double , inputDistanceType :  String){
    
        let distanceC = Distance()
        
        if inputDistanceType == meter{
            footTxt.text = "\(distanceC.convertMain(fromType: meter, toType: foot, distance: distance))"
            yardTxt.text = "\(distanceC.convertMain(fromType: meter, toType: yard, distance: distance))"
            kilometerTxt.text = "\(distanceC.convertMain(fromType: meter, toType: kilometer, distance: distance))"
            mileTxt.text = "\(distanceC.convertMain(fromType: meter, toType: mile, distance: distance))"
        }else if inputDistanceType == foot{
            meterTxt.text = "\(distanceC.convertMain(fromType: foot, toType: meter, distance: distance))"
            yardTxt.text = "\(distanceC.convertMain(fromType: foot, toType: yard, distance: distance))"
            kilometerTxt.text = "\(distanceC.convertMain(fromType: foot, toType: kilometer, distance: distance))"
            mileTxt.text = "\(distanceC.convertMain(fromType: foot, toType: mile, distance: distance))"
        }else if inputDistanceType == yard{
            meterTxt.text = "\(distanceC.convertMain(fromType: yard, toType: meter, distance: distance))"
            footTxt.text = "\(distanceC.convertMain(fromType: yard, toType: foot, distance: distance))"
            kilometerTxt.text = "\(distanceC.convertMain(fromType: yard, toType: kilometer, distance: distance))"
            mileTxt.text = "\(distanceC.convertMain(fromType: yard, toType: mile, distance: distance))"
        }else if inputDistanceType == kilometer{
            meterTxt.text = "\(distanceC.convertMain(fromType: kilometer, toType: meter, distance: distance))"
            footTxt.text = "\(distanceC.convertMain(fromType: kilometer, toType: foot, distance: distance))"
            yardTxt.text = "\(distanceC.convertMain(fromType: kilometer, toType: yard, distance: distance))"
            mileTxt.text = "\(distanceC.convertMain(fromType: kilometer, toType: mile, distance: distance))"
        }else if inputDistanceType == mile{
            meterTxt.text = "\(distanceC.convertMain(fromType: mile, toType: meter, distance: distance))"
            footTxt.text = "\(distanceC.convertMain(fromType: mile, toType: foot, distance: distance))"
            yardTxt.text = "\(distanceC.convertMain(fromType: mile, toType: yard, distance: distance))"
            kilometerTxt.text = "\(distanceC.convertMain(fromType: mile, toType: kilometer, distance: distance))"
        }
    }
    
     //function that clears all textfeilds
    func clearTextBoxed(){
        meterTxt.text = ""
        footTxt.text = ""
        yardTxt.text = ""
        kilometerTxt.text = ""
        mileTxt.text = ""
    }
}
