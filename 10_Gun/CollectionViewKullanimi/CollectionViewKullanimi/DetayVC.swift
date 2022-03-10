//
//  DetayVC.swift
//  CollectionViewKullanimi
//
//  Created by osmanyesil on 3/7/22.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var ulkeAdLabel: UILabel!
    @IBOutlet weak var ulkeBaskentLabel: UILabel!
    
    var ulke:Ulkeler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = ulke {
            ulkeAdLabel.text = u.ulkeAd
            ulkeBaskentLabel.text = u.ulkeBaskent
        }
    }
    
    @IBAction func vizeButton(_ sender: Any) {
        if let u = ulke {
            print("\(u.ulkeAd!) ülkesine vize başvurusu yapıldı.")
        }
    }
}
