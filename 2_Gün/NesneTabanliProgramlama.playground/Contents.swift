import UIKit

class Araba { //Class olarak bir taslak oluşturduk
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){ //Boş constructor eğer Araba nesnesi oluştuğunda değer yok ise
        print("Araba sınıfından boş constructor ile nesne oluşturuldu.")
    }
    
    //init metodunu overloading işlemi
    init(renk:String,hiz:Int,calisiyorMu:Bool){ // Dolu constructor eğer Araba nesnesi oluştuğunda değer verilir ise
        self.renk = renk //Shadowing işlemi bir sınıftaki değişkene cons. ile değer atama => super : Üst sınıfı(kalıtım)
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
        print("Araba sınıfından dolu constructor ile nesne oluşturuldu.")
    }
    
    //Side effect : Class içinden metod ile değerleri değiştirme işlemine
    func calistir(){
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl (){
        print("*********************************************")
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışıyor mu : \(calisiyorMu!)")
    }
}





var bmw = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)
/* Değer atama
bmw.renk = "Kırmızı"
bmw.hiz = 100
bmw.calisiyorMu = true */

//Değer okuma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()

var limuzin = Araba(renk: "Beyaz", hiz: 0, calisiyorMu: false)

limuzin.bilgiAl()
limuzin.calistir()
limuzin.bilgiAl()
limuzin.hizlan(kacKm: 100)
limuzin.bilgiAl()
limuzin.yavasla(kacKm: 50)
limuzin.bilgiAl()



//Static : Çok sık erişilen değişken ve metodlara değişmeyecek değerlere aşağıdaki gibi erişilebilir.
class Asinifi{
    static var x = 10
    
    static func metod(){
        print("Metod çalıştı")
    }
}

print(Asinifi.x)
Asinifi.metod()



