//
//  ViewController.swift
//  SearchBar-TableView
//
//  Created by Cagla Efendioglu on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler = [String]()
    var aramaSonucuUlkeler = [String]()
    var aramaYapiliyorMu = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Turkiye","Almanya","Japonya","Rusya","Italya","Guney Kore","Fransa","Misir"]
        
        searchBar.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if aramaYapiliyorMu{
            return aramaSonucuUlkeler.count
        }
        else{
            return ulkeler.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
        if aramaYapiliyorMu{
            cell.textLabel?.text = aramaSonucuUlkeler[indexPath.row]
        }
        else{
            cell.textLabel?.text = ulkeler[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if aramaYapiliyorMu{
            print("Secilen ulke : \(aramaSonucuUlkeler[indexPath.row])")
        }
        else{
            print("Secilen ulke : \(ulkeler[indexPath.row])")        }

    }
}

extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama sonucu: \(searchText)")
        
        if searchText == "" {
            aramaYapiliyorMu = false
        }
        else{
            aramaYapiliyorMu = true
            aramaSonucuUlkeler = ulkeler.filter({$0.lowercased().contains(searchText.lowercased())})
        }
        tableView.reloadData()
    }
    
}
