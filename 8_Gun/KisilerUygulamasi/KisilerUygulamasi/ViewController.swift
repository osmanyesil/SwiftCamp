//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/2/22.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }

    @IBAction func buttonTikla(_ sender: Any) {
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "11111")
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let kisi = sender as? Kisiler //Down casting
            let gidilecekVC = segue.destination as! KisiDetayVC
            gidilecekVC.kisi = kisi
        }
    }
}

extension ViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama sonucu : \(searchText)")
    }
}

