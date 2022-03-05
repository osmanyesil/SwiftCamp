//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by osmanyesil on 2/23/22.
//

import UIKit

class OyunEkraniVC: UIViewController {

    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            print("Kişi ad - \(k.ad!)")
            print("Kişi ad - \(k.yas!)")
            print("Kişi ad - \(k.boy!)")
            print("Kişi ad - \(k.bekar!)")
        }
    }

    @IBAction func buttonBitirTikla(_ sender: Any) {
        performSegue(withIdentifier: "SonucEkraniGecis", sender: nil) //Sayfa geçiş
    }
    
    @IBAction func buttonGeriTikla(_ sender: Any) {
        //navigationController?.popViewController(animated: true) //Bir önceki sayfa geçiş
        navigationController?.popToRootViewController(animated: true) //Anasayfaya geri dönüş
    }
}
