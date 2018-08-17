//
//  FirstViewController.swift
//  unit-conversion-iOS
//
//  Created by Mayantha Jayawardena on 8/16/18.
//  Copyright © 2018 Vision8. All rights reserved.
//

import UIKit

class TemperatureVC: UIViewController , UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
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

}

