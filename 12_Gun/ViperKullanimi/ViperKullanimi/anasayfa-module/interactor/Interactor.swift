//
//  Interactor.swift
//  ViperKullanimi
//
//  Created by osmanyesil on 3/12/22.
//

import Foundation

class Interactor : PresenterToInteractorProtocol { //Interactor'dan Presenter'a verileri gönderdik
    var presenter: InteractorToPresenterProtocol?
    
    func topla(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1), let s2 = Int(sayi2) {
            let toplam = s1 + s2
            presenter?.presenteraVeriGonder(sonuc: String(toplam))
        }
    }
    
    func carp(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1), let s2 = Int(sayi2) {
            let carpma = s1 * s2
            presenter?.presenteraVeriGonder(sonuc: String(carpma))
        }
    }
    
    
}
