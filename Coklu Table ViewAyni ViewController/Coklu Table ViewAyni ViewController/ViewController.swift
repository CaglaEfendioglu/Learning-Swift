//
//  ViewController.swift
//  Coklu Table ViewAyni ViewController
//
//  Created by Cagla Efendioglu on 26.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewUlkeler: UITableView!
    @IBOutlet weak var tableViewSehirler: UITableView!
    
    var ulkeler:[String] = [String]()
    var sehirler:[String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Turkiye", "Almanya", "Japonya", "Rusya", "Italya"]
        sehirler = ["Istanbul", "Ankara", "Bursa", "Adana"]
        
        tableViewUlkeler.delegate = self
        tableViewUlkeler.dataSource = self
        
        tableViewSehirler.delegate = self
        tableViewSehirler.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var veriSayisi:Int?
        
        if tableView == tableViewUlkeler {
            veriSayisi = ulkeler.count
        }
        
        if tableView == tableViewSehirler {
            veriSayisi = sehirler.count
        }
        
        return veriSayisi!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell?
        
        if tableView == tableViewUlkeler {
            cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerhucre", for: indexPath)
            cell?.textLabel?.text = ulkeler[indexPath.row]
        }
        
        if tableView == tableViewSehirler {
            cell = tableView.dequeueReusableCell(withIdentifier: "sehirlerhucre", for: indexPath)
            cell?.textLabel?.text = sehirler[indexPath.row]
        }
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableViewUlkeler {
            print("Secilen ulke: \(ulkeler[indexPath.row])")
        }
        
        if tableView == tableViewSehirler {
            print("Secilen sehir: \(sehirler[indexPath.row])")
        }
    }

}
