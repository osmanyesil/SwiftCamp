//
//  UrunTableViewCell.swift
//  DetayliTableViewKullanimi
//
//  Created by osmanyesil on 3/5/22.
//

import UIKit


class UrunTableViewCell: UITableViewCell {

    @IBOutlet weak var urunResimImageView: UIImageView!
    @IBOutlet weak var urunAdLabel: UILabel!
    @IBOutlet weak var urunFiyatLabel: UILabel!
    @IBOutlet weak var hucreArkaPlan: UIView!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func sepetEkleButton(_ sender: Any) {
        hucreProtocol?.buttonTiklandı(indexPath: indexPath!)
    }
    
}
