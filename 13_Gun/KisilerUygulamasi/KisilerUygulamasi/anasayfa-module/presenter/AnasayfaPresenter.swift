//
//  AnasayfaPresenter.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtokol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtokol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.tumKisileriAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.kisiAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(kisi_id: Int) {
        anasayfaInteractor?.kisiSil(kisi_id: kisi_id)
    }
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi: Array<Kisiler>) {
        anasayfaView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
}
