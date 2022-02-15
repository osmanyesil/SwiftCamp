import UIKit

print("-----------Variables----------------------")

var ogrenciAdi = "Osman"
var ogrenciYas = 25
var ogrenciBoy = 1.85
var ogrenciBasHarf = "A"
var ogrenciDevamEdiyorMu = true
print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasHarf)
print(ogrenciDevamEdiyorMu)


print("-----------Variables----------------------")

var urun_Id:Int = 3416
var urun_adi:String = "Kol Saati"
var urun_adet:Int = 100
var urun_fiyat:Double = 149.99
var urun_tedarikci:String = "Rolex"
print("Ürün id : \(urun_Id)")
print("Ürün adı : \(urun_adi)")
print("Ürün adet : \(urun_adet)")
print("Ürün fiyat : \(urun_fiyat) ₺" )
print("Ürün tedarikçi : \(urun_tedarikci)")

//Constant - Sabitler
//Hafızaya faydası için ; Variable için belleğin ayırdığı bölüm fazla olduğu için daha fazla yer alır. Const için ise değeri değiştirilemez olduğu için
//değerini bildiği için fazla yer kaplamaz. bu yüzden değer değişmez ise
// let ile tanımlamamamız gerekir.

print("-----------Constant - Sabitler----------------------")
let numara = 10
//numara = 20  = Değer değiştirilmek istenirse hata verir. let değiştirilemez
print("Sabit = \(numara)")


print("-----------Tür Dönüşümü----------------------")
// Int() , Float() , Double() , String()
 
//Sayısaldan Sayıla Type Casting
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

//Sayısaldan Metine
var sonuc3 = String(i)
var sonuc4 = String(d)

print(sonuc3)
print(sonuc4)


//Metinden Sayısala

var yazi = "34"
var sonuc5 = Int(yazi)

if let sonuc5 = Int(yazi) { // Hata yok ise işlem yapılır var ise yapılmaz
    print(sonuc5)
}

print("-----------Tuples----------------------")
//Çoklu değişken tanımlama gibi düşünebiliriz.

var kisi = ("Osman","Yeşil")
var ad = kisi.0
var soyad = kisi.1

print(ad + soyad)

var nokta = (x:10,y:20)
print(nokta.x)
print(nokta.y)

var hataMesaji = (404,"Not Found")
var (kod,mesaj) = hataMesaji

print(kod)
