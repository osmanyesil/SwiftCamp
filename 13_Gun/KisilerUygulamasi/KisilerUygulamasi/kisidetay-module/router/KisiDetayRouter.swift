//
//  KisiDetayRouter.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

class KisiDetayRouter : PresenterToRouterKisiDetayProtocol{
    static func createModule(ref: KisiDetayVC) {
        ref.kisiDetayPresenterNesnesi = KisiDetayPresenter()
        ref.kisiDetayPresenterNesnesi?.kisiDetayInteractor = KisiDetayInteractor()
    }
}
