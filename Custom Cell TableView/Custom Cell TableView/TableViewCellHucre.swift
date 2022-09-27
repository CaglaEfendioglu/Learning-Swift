//
//  TableViewCellHucre.swift
//  Custom Cell TableView
//
//  Created by Cagla Efendioglu on 27.09.2022.
//

import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButtonTiklandi(indexPath:IndexPath)
}


class TableViewCellHucre: UITableViewCell {
    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var hucreProtocol: TableViewHucreProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func buttonTikla(_ sender: Any) {
        hucreProtocol?.hucreUzerindekiButtonTiklandi(indexPath: indexPath!)
    }
}
