//
//  UlkeCollectionViewCell.swift
//  CollectionViewKullanimi
//
//  Created by osmanyesil on 3/7/22.
//

import UIKit

protocol HucreProtokol {
    func buttonTiklandi(indexPath:IndexPath)
}

class UlkeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ulkeLabel: UILabel!
    
    var hucreProtokol:HucreProtokol?
    var indexPath:IndexPath?
  
    @IBAction func secButton(_ sender: Any) {
        hucreProtokol?.buttonTiklandi(indexPath: indexPath!)
    }
}

