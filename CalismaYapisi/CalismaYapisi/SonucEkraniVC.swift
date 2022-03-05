//
//  SonucEkraniVC.swift
//  CalismaYapisi
//
//  Created by osmanyesil on 2/23/22.
//

import UIKit

class SonucEkraniVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonKapatTikla(_ sender: Any) {
        self.dismiss(animated: true, completion: nil) //Sayfa üzerinde açılan yapıları kapatır.
    }
    

}
