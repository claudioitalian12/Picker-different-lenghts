//
//  ViewController.swift
//  PickerPersonalize
//
//  Created by claudio Cavalli on 25/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var value = [
          ["1","2","3"],
          ["1","2","3","4","5"],
          ["1","2"]
                 ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return value.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return value[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return value[component][row]
    }
    
    
}
