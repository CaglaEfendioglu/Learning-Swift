//
//  ViewController.swift
//  Search Bar Kullanimi
//
//  Created by Cagla Efendioglu on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.delegate = self
        
        searchBar.scopeButtonTitles = ["Birinci", "Ikinci"]
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama sonuc: \(searchText)")
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel secildi")
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("Birinci tiklanildi")
        }
        if selectedScope == 1 {
            print("Ikinci tiklanildi")
        }
    }


}
