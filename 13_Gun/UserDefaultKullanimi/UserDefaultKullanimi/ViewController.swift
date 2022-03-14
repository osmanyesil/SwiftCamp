//
//  ViewController.swift
//  UserDefaultKullanimi
//
//  Created by osmanyesil on 3/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        var sayac = ud.integer(forKey: "sayac") // Eğer değer yok ise 0 göstericek
        sayac = sayac + 1
        ud.set(sayac, forKey: "sayac")
        labelSayac.text = "Açılış Sayısı :\(sayac)"
        
        userDefaultCalismasi()
    }

    func userDefaultCalismasi(){
        let ud = UserDefaults.standard
        
        //Kayıt
        ud.set("Ahmet", forKey: "ad")
        ud.set(23, forKey: "yas")
        ud.set(1.78, forKey: "boy")
        ud.set(true, forKey: "bekar")
        
        let arkadasListesi = ["ali","ece"] //List
        ud.set(arkadasListesi, forKey: "liste")
        
        let sehirler = ["16":"BURSA","34":"İSTANBUL"] //Dictionary
        ud.set(sehirler, forKey: "sehirler")
        
        //Okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok" //String primitive(default değeri) tip olmadığı için değer yok ise ternary if ile değer verdik}
        let gelenYas = ud.integer(forKey: "yas")
        let gelenBoy = ud.double(forKey: "boy")
        let gelenBekar = ud.bool(forKey: "bekar")
        print("Gelen Ad : \(gelenAd)")
        print("Gelen Yaş : \(gelenYas)")
        print("Gelen Boy : \(gelenBoy)")
        print("Gelen Bekar : \(gelenBekar)")
        
        let gelenListe = ud.array(forKey: "liste") ?? [String]()
        
        for a in gelenListe {
            print("Gelen Arkadaş : \(a)")
        }
        
        let gelenDict = ud.dictionary(forKey: "sehirler") ?? [String:String]() // Dictionary
        
        for (anahtar,deger) in gelenDict {
            print("Gelen Şehir : \(anahtar) - \(deger)")
        }
        
        //Silme
        //ud.removeObject(forKey: "ad")
    }

}
