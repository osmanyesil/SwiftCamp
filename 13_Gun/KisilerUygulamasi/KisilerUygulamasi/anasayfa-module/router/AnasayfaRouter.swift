//
//  AnasayfaRouter.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

class AnasayfaRouter : PresenterToRouterAnasayfaProtokol {
    static func createModule(ref: AnasayfaVC) {
        let presenter = AnasayfaPresenter()
        
        //View
        ref.anasayfaPresenterNesnesi = presenter
        //Presenter
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaView = ref
        //Interactor
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
}
