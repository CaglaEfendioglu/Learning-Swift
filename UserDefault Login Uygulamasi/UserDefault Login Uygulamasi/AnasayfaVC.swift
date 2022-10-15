//
//  AnasayfaVC.swift
//  UserDefault Login Uygulamasi
//
//  Created by Cagla Efendioglu on 14.10.2022.
//

import UIKit

class AnasayfaVC: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    
    var d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        labelSonuc.text = ka
    }
    
    @IBAction func cikisYap(_ sender: Any) {
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        exit(-1)
    }
}
