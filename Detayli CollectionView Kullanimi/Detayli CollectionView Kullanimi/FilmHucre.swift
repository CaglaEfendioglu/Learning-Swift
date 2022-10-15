//
//  FilmHucre.swift
//  Detayli CollectionView Kullanimi
//
//  Created by Cagla Efendioglu on 4.10.2022.
//

import UIKit

protocol FilmHucreProtocol{
    func sepeteEkle(indexPath: IndexPath)
}


class FilmHucre: UICollectionViewCell {
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtocol: FilmHucreProtocol?
    var indexPath: IndexPath?

    @IBAction func sepeteEkleButton(_ sender: Any) {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
    
}
