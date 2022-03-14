//
//  AnasayfaProtocols.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

//Ana Protokoller View - Presenter - Interactor
protocol ViewToPresenterAnasayfaProtokol {//Presenter Katmanı
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtokol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol?{get set}
    
    func kisileriYukle()
    func ara(aramaKelimesi:String)
    func sil(kisi_id:Int)
}

protocol PresenterToInteractorAnasayfaProtokol { //Interactor Katmanı
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol?{get set}
    
    func tumKisileriAl()
    func kisiAra(aramaKelimesi:String)
    func kisiSil(kisi_id:Int)
}

//TaşıyıcıProtokoller Interactor - Presenter - View
protocol InteractorToPresenterAnasayfaProtocol{
    func presenteraVeriGonder(kisilerListesi:Array<Kisiler>)
}

protocol PresenterToViewAnasayfaProtocol{
    func vieweVeriGonder(kisilerListesi:Array<Kisiler>)
}

protocol PresenterToRouterAnasayfaProtokol {
    static func createModule(ref:AnasayfaVC)
}
