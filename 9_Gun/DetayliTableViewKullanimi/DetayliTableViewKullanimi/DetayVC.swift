//
//  DetayVC.swift
//  DetayliTableViewKullanimi
//
//  Created by osmanyesil on 3/7/22.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var urunResim: UIImageView!
    @IBOutlet weak var urunFiyat: UILabel!
    
    var urun:Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let u = urun {
            self.navigationItem.title = u.urun_adi
            urunResim.image = UIImage(named: u.urun_resim_ad!)
            urunFiyat.text = "\(u.urun_fiyat!) ₺"
        }
    }

    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let u = urun {
            print("\(u.urun_adi!) sepete eklendi.")
        }
    }
}
