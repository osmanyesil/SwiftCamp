//
//  KisiKayitInteractor.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

class KisiKayitInteractor : PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        print("Kişi kayıt : \(kisi_ad) - \(kisi_tel)")
    }
}
