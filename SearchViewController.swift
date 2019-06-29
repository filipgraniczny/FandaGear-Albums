//
//  SearchViewController.swift
//  FandaGear Albums
//
//  Created by Filip Graniczny on 6/28/19.
//  Copyright © 2019 Filip Graniczny. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var photoIDField: UITextField!
    @IBOutlet weak var photographerField: UITextField!
    @IBOutlet weak var tagField: UITextField!
    @IBOutlet weak var regNumberField: UITextField!
    @IBOutlet weak var airlineField: UITextField!
    @IBOutlet weak var manufacturerField: UITextField!
    @IBOutlet weak var modelNumberField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var flightNumberField: UITextField!
    @IBOutlet weak var departureField: UITextField!
    @IBOutlet weak var arrivalField: UITextField!
    
    
    let photographerPicker = UIPickerView()
    let tagPicker = UIPickerView()
    let airlinePicker = UIPickerView()
    let manufacturerPicker = UIPickerView()

    let photographerArray = [String](arrayLiteral: "Filip Graniczny", "Albert Lua", "Adam Witusik")
    let tagArray = [String](arrayLiteral: "Oshkosh 2018", "SFO Spotting")
    let airlineArray = [String](arrayLiteral: "American Airlines", "United Air Lines")
    let manufacturerArray = [String](arrayLiteral: "Boeing", "Airbus", "Embraer")
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(pickerView == photographerPicker){
            return photographerArray.count
        }
        else if(pickerView == tagPicker){
            return tagArray.count
        }
        else if(pickerView == airlinePicker){
            return airlineArray.count
        }
        else{
            return manufacturerArray.count
        }
    }
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(pickerView == photographerPicker){
            return photographerArray[row]
        }
        else if(pickerView == tagPicker){
            return tagArray[row]
        }
        else if(pickerView == airlinePicker){
            return airlineArray[row]
        }
        else{
            return manufacturerArray[row]
        }
    }
    
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView == photographerPicker){
            photographerField.text = photographerArray[row]
        }
        else if(pickerView == tagPicker){
           tagField.text = tagArray[row]
        }
        else if(pickerView == airlinePicker){
            airlineField.text = airlineArray[row]
        }
        else{
            manufacturerField.text = manufacturerArray[row]
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        photographerPicker.delegate = self
        photographerField.inputView = photographerPicker
        tagPicker.delegate = self
        tagField.inputView = tagPicker
        airlinePicker.delegate = self
        airlineField.inputView = airlinePicker
        manufacturerPicker.delegate = self
        manufacturerField.inputView = manufacturerPicker


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
