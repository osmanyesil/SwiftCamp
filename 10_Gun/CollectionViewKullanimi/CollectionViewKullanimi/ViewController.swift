//
//  ViewController.swift
//  CollectionViewKullanimi
//
//  Created by osmanyesil on 3/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ulkelerCollectionView: UICollectionView!
    
    var ulkelerListesi = [Ulkeler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkelerCollectionView.delegate = self
        ulkelerCollectionView.dataSource = self
        
        let u1 = Ulkeler(ulkeId: 1, ulkeAd: "Türkiye", ulkeBaskent: "Ankara")
        let u2 = Ulkeler(ulkeId: 2, ulkeAd: "Fransa", ulkeBaskent: "Paris")
        let u3 = Ulkeler(ulkeId: 3, ulkeAd: "İtalya", ulkeBaskent: "Roma")
        let u4 = Ulkeler(ulkeId: 4, ulkeAd: "İngiltere", ulkeBaskent: "Londra")
        let u5 = Ulkeler(ulkeId: 5, ulkeAd: "Japonya", ulkeBaskent: "Tokyo")
        ulkelerListesi.append(u1)
        ulkelerListesi.append(u2)
        ulkelerListesi.append(u3)
        ulkelerListesi.append(u4)
        ulkelerListesi.append(u5)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) //Ekran ile collection view arasında kalan boşluk
        tasarim.minimumInteritemSpacing = 5 //Yatay item arası boşluk
        tasarim.minimumLineSpacing = 5 //Dikey item arası boşluk
        let genislik = self.ulkelerCollectionView.frame.size.width //Collection view genişlik
        tasarim.itemSize = CGSize(width: (genislik-25)/3, height: (genislik-25)/3)
        ulkelerCollectionView.collectionViewLayout = tasarim
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,HucreProtokol {
    //Her kutu item olarak geçiyor.Kaç adet veri olacak ?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkelerListesi.count
    }
    
    //Item içeriği tanımlama
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ulke = ulkelerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! UlkeCollectionViewCell
        
        cell.ulkeLabel.text = ulke.ulkeAd
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10
        
        cell.hucreProtokol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ulke = ulkelerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: ulke) // Detay sayfaya yönlendiir
        print("\(ulke.ulkeAd!) seçildi.")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //Detaya giderken ülke nesnesine gönderme 
        if segue.identifier == "toDetay" {
            let ulke = sender as? Ulkeler
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.ulke = ulke
        }
    }
    
    func buttonTiklandi(indexPath: IndexPath) {
        let ulke = ulkelerListesi[indexPath.row]
        print("Button ile \(ulke.ulkeAd!) seçildi.")
    }
    
}



