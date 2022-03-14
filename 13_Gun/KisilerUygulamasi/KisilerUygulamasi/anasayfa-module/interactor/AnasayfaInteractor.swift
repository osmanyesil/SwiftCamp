//
//  AnasayfaInteractor.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtokol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumKisileriAl() {
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "111111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "222222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Ece", kisi_tel: "333333")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste) //Veriyi aldık presenter'a veriyi ilettik
    }
    
    func kisiSil(kisi_id: Int) {
        print("\(kisi_id) silindi")
    }
    
    func kisiAra(aramaKelimesi: String) {
        print("Arama sonucu : \(aramaKelimesi)")
    }
}
