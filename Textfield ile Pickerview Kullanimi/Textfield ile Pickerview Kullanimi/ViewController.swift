//
//  ViewController.swift
//  Textfield ile Pickerview Kullanimi
//
//  Created by Cagla Efendioglu on 20.09.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var textfieldUlke: UITextField!
    
    var pickerView: UIPickerView?
    var ulkeler = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Turkiye","Almanya","Japonya","Rusya","Italya"]
        
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        textfieldUlke.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        let bosluk = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let iptalButton = UIBarButtonItem(title: "Iptal", style: .plain, target: self, action: #selector(self.iptalTikla))
        
        toolbar.setItems([tamamButton,bosluk,iptalButton], animated: true)
        
        textfieldUlke.inputAccessoryView = toolbar
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldUlke.text = ulkeler[row]
    }
    
     @objc func tamamTikla (){
         view.endEditing(true)

    }
    @objc func iptalTikla (){
        textfieldUlke.text = ""
        textfieldUlke.placeholder = "Ulke Sec"
        view.endEditing(true)

   }

}

