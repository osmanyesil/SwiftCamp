//
//  Protocols.swift
//  ViperKullanimi
//
//  Created by osmanyesil on 3/12/22.
//

import Foundation

/*
 VIPER Design Pattern ;
    View -> Presenter -> Interactor
    View <- Presenter <- Interactor
 */


//Ana protocol
protocol ViewToPresenterProtocol {  // View -> Presenter
    var interactor:PresenterToInteractorProtocol? {get set}
    var view:PresenterToViewProtocol?{get set}
    
    func toplamaYap(sayi1:String,sayi2:String)
    func carpmaYap(sayi1:String,sayi2:String)
}

//Ana protocol
protocol PresenterToInteractorProtocol {  //Presenter -> Interactor
    var presenter:InteractorToPresenterProtocol?{get set}
    
    func topla(sayi1:String,sayi2:String)
    func carp(sayi1:String,sayi2:String)
}

//Taşıyıcı Protocol
protocol InteractorToPresenterProtocol { // Interactor -> Presenter
    func presenteraVeriGonder(sonuc:String)
}

//Taşıyıcı Protocol
protocol PresenterToViewProtocol{ // Presenter -> View
    func vieweVeriGonder(sonuc:String)
}

//Router Protocol
protocol PresenterToRouterProtocol {
    static func createModule(ref: ViewController) // Hangi sayfa alt yapısını sağlıyorsak onu yazıyoruz
}
