//
//  KisiKayitRouter.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/14/22.
//

import Foundation

class KisiKayitRouter : PresenterToRouterKisiKayitProtocol {
    static func createModule(ref: KisiKayitVC) {
        ref.kisiKayitPresenterNesnesi = KisiKayitPresenter()
        ref.kisiKayitPresenterNesnesi?.kisiKayitInteractor = KisiKayitInteractor()
    }
}
