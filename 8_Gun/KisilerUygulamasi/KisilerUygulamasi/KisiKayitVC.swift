//
//  KisiKayitVC.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/2/22.
//

import UIKit

class KisiKayitVC: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text {
            kayit(kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    func kayit(kisi_ad:String,kisi_tel:String){
        print("Kişi Kayıt \(kisi_ad) - \(kisi_tel)")
        
    }
}
