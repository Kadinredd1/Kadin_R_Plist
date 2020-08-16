//
//  ViewController.swift
//  plist
//
//  Created by Kadin Redd on 8/16/20.
//  Copyright © 2020 Kadin Redd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Save(_ sender: Any) {
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
        UserDefaults.standard.set(Switch.isOn, forKey: "Switch")
        UserDefaults.standard.set(Slider.value, forKey: "Slider")
    }
  
    @IBAction func Load(_ sender: Any) {
        Switch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        Slider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func Delete(_ sender: Any) {
        Switch.isOn = true
        Slider.value = 0.5
        mySerialNumber.text = ""
    }
  
    @IBOutlet weak var mySerialNumber: UITextField!
  
    @IBOutlet weak var Slider: UISlider!
   
    @IBOutlet weak var Switch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

