//
//  ViewController.swift
//  Basit Table View
//
//  Created by Cagla Efendioglu on 26.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Turkiye", "Almanya", "Japonya", "Rusya", "Italya", "Guney Kore", "Fransa", "Misir"]
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController :UITableViewDelegate, UITableViewDataSource{
    
func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ulkeler.count
}
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath)
    cell.textLabel?.text = ulkeler[indexPath.row]
    return cell
}
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Secilen ulke: \(ulkeler[indexPath.row])")
}

func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let silAction = UIContextualAction(style: .destructive, title: "Sil") {(UIContextualAction, view, boolValue) in
        print("\(self.ulkeler[indexPath.row]) yi sil")
        
    }
    let duzenleAction = UIContextualAction(style: .normal, title: "Duzenle") {(UIContextualAction, view, boolValue) in
        print("\(self.ulkeler[indexPath.row]) yi duzenle")
    }
    return UISwipeActionsConfiguration(actions: [silAction, duzenleAction])
  }
}
