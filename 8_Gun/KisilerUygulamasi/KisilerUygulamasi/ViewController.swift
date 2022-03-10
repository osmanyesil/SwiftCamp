//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by osmanyesil on 3/2/22.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "11111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Osman", kisi_tel: "22222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Mustafa", kisi_tel: "33333")
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
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

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    //Satır sayısı
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    //Hücre içi
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListe[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        hucre.kisiBilgiLabel.text = "\(kisi.kisi_ad!) - \(kisi.kisi_tel!)"
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {(contextualAction,view,bool) in
            let kisi = self.kisilerListe[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) silinsin mi ?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel){action in }
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){action in
                print("\(kisi.kisi_ad!) silindi.")
                self.kisilerListe.remove(at: indexPath.row)
                tableView.reloadData()
            }
            alert.addAction(evetAction)
            
            self.present(alert, animated: true)
            
            
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}
