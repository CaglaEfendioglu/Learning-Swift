//
//  ViewController.swift
//  UserDefault Login Uygulamasi
//
//  Created by Cagla Efendioglu on 14.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfieldKullaniciAdi: UITextField!

    @IBOutlet weak var textfieldSifre: UITextField!
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        if ka != "bos" && s != "bos" {
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
        }
    }

    @IBAction func girisYap(_ sender: Any) {
        if let ka = textfieldKullaniciAdi.text, let s = textfieldSifre.text {
            if ka == "admin" && s == "123456" {
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
            }
            else{
                print("Hatali giris yapildi")
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

