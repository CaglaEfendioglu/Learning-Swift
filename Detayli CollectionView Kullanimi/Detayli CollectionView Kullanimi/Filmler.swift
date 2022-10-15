//
//  Filmler.swift
//  Detayli CollectionView Kullanimi
//
//  Created by Cagla Efendioglu on 4.10.2022.
//

import Foundation

class Filmler {
    var filmId:Int?
    var filmBaslik:String?
    var filmResimAdi:String?
    var filmFiyat:Double?
    
    init(){
    }
    init(filmId:Int,filmBaslik:String,filmResimAdi:String,filmFiyat:Double){
        self.filmId = filmId
        self.filmBaslik = filmBaslik
        self.filmResimAdi = filmResimAdi
        self.filmFiyat = filmFiyat
    }
}
