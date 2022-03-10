//
//  Urunler.swift
//  DetayliTableViewKullanimi
//
//  Created by osmanyesil on 3/5/22.
//

import Foundation

class Urunler{
    var urun_id:Int?
    var urun_adi:String?
    var urun_resim_ad:String?
    var urun_fiyat:Double?
    
    init(){
        
    }
    
    init(urun_id:Int,urun_adi:String,urun_resim_ad:String,urun_fiyat:Double){ // shadowing
        self.urun_id = urun_id
        self.urun_adi = urun_adi
        self.urun_resim_ad = urun_resim_ad
        self.urun_fiyat = urun_fiyat
    }
}
