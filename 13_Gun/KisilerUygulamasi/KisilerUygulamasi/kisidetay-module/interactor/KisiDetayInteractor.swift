//
//  KisiDetayInteractor.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

class KisiDetayInteractor : PresenterToInteractorKisiDetayProtocol {
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        print("Kişi güncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    
    
}
