//
//  YemekTableViewCell.swift
//  Detayli TableView Kullanimi
//
//  Created by Cagla Efendioglu on 27.09.2022.
//

import UIKit

protocol YemekTableViewCellProtocol {
    func siparisVer(indexPath: IndexPath)
    }


class YemekTableViewCell: UITableViewCell {
    @IBOutlet weak var yemekResimImageView: UIImageView!
    @IBOutlet weak var labelYemekAdi: UILabel!
    @IBOutlet weak var labelYemekFiyat: UILabel!
    
    var hucreProtocol: YemekTableViewCellProtocol?
    var indexPath: IndexPath?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

    @IBAction func siparisVerButton(_ sender: Any) {
        hucreProtocol?.siparisVer(indexPath: indexPath!)
    }
}
