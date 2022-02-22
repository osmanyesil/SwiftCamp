//Enum : Enumaration :
enum KonserveBoyut {
    case Kucuk
    case Orta
    case Buyuk
}

func ucretHesapla(adet:Int,boyut:KonserveBoyut){
    switch boyut {
    case .Kucuk:
        print("Fiyat : \(adet*10) ₺")
    case .Orta:
        print("Fiyat : \(adet*40) ₺")
    case .Buyuk:
        print("Fiyat : \(adet*70) ₺")
    }
}

ucretHesapla(adet: 100, boyut: .Orta)
