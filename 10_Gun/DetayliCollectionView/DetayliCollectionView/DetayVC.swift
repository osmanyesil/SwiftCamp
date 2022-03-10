//
//  DetayVC.swift
//  DetayliCollectionView
//
//  Created by osmanyesil on 3/9/22.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmYonetmenAdiLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var film:Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film {
            filmAdiLabel.text = f.filmAdi
            filmYonetmenAdiLabel.text = f.filmYonetmenAdi
            filmImageView.image = UIImage(named: f.filmResimAdi!)
            filmFiyatLabel.text = "\(f.filmFiyat!) ₺"
            
        }
        
    }

    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let f = film {
            print("\(f.filmAdi!) \(f.filmFiyat!) ₺ fiyatla sepete eklendi.")
        }
        
    }
}
