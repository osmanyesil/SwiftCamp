


//*******Fonksiyonlar*******\\
func selamla(){ //Geriye dönüş değeri olmayan fonksiyon
    let sonuc = "Merhaba Osman"
    print(sonuc)
}
selamla()


func selamla1() -> String{ // Geri dönüş fonksiyon
    let sonuc = "Merhaba Mehmet"
    return sonuc
}
var gelenSonuc = selamla1()
print("Gelen sonuç : \(gelenSonuc)")


func selamla2(isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}

selamla2(isim: "Ahmet")

func toplama(sayi1:Int,sayi2:Int) -> Int{
    return sayi1 + sayi2
}

print("Gelen toplam : \(toplama(sayi1: 15, sayi2: 15))")


//*******Overloading*******\\ Aynı isimdeki metodların tekrar tekrar kullanılması işlemi
//Class içinde aynı isimde fonksiyon farklı işlemler yapıyor
class Hesaplayici {
    func topla(sayi1:Int,sayi2:Int){
        print("Toplam : \(sayi1+sayi2)")
    }
    func topla(sayi1:Double,sayi2:Int){
        print("Toplam : \(sayi1 + Double(sayi2))")
    }
    func topla(sayi1:Double,sayi2:Double){
        print("Toplam : \(sayi1 + sayi2)")
    }
    func topla(sayi1:Double,sayi2:Double,ad:String){
        print("Toplam : \(sayi1 + sayi2) , işlemi yapan \(ad)")
    }
}


var h = Hesaplayici()
h.topla(sayi1: 15, sayi2: 20, ad: "Osman")
