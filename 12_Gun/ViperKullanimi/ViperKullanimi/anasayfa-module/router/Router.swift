//
//  Router.swift
//  ViperKullanimi
//
//  Created by osmanyesil on 3/12/22.
//

import Foundation

//Katmanları çalıştıran bütün değişkenleri tanımlıcaz
class Router : PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
    
        let presenter = Presenter()
        
        //View sınıfı değişkeni
        ref.presenterNesnesi = presenter
        
        //Presenter sınıfır değişkenleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //Interactor değişkeni
        ref.presenterNesnesi?.interactor?.presenter = presenter
        
        
    }
}
