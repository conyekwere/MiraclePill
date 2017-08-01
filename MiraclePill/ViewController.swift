//
//  ViewController.swift
//  MiraclePill
//
//  Created by Chima onyekwere on 7/28/17.
//  Copyright © 2017 Chima onyekwere. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipInput: UITextField!
    @IBOutlet weak var countryInput: UITextField!
    let states = ["Alaska","Arkansas","Alabama","California","Maine","New York"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
     statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        zipInput.isHidden = true
         countryInput.isHidden = true
        zipLabel.isHidden = true
        countryLabel.isHidden = true
          buyBtn.isHidden = true
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        zipInput.isHidden = false
        countryInput.isHidden = false
        zipLabel.isHidden = false
        countryLabel.isHidden = false
          buyBtn.isHidden = false
    }
}

