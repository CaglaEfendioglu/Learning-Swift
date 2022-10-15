//
//  ViewController.swift
//  UserDefaultSayacUygulamasi
//
//  Created by Cagla Efendioglu on 13.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac")
        sayac += 1
        d.set(sayac, forKey: "sayac")
        labelSayac.text = "Sayac: \(sayac)"
    }
}
