import UIKit

/*
 Class vs Structure
 
 • Her iki yapıda benzer özelliklere sahiptir.
 • Class , referans tipidir.
 • Structure , değer tipidir.
 • Structure için miras özelliği yoktur.
 
 • Referans Tipi : Ali ile Mehmet ortak bir dosya kullanıyorlar. Ali bu
 dosya içindeki veriyi değiştirirse Mehmet’e bu değişiklikten etkilenir.
 • Değer Tipi : Ali veya Mehmet dosyadaki bilgiyi değiştirirlerse ikisi de
 bu değişiklikten etkilenmez ve herkesin dosyası kendisinde olur.
 
 */

//Referans_Tip örnek
class Ogrenci {
    var ad:String?
}

var ogrenci1 = Ogrenci()
ogrenci1.ad = "Ahmet"

var ogrenci2 = ogrenci1
ogrenci2.ad = "Mehmet"

print(ogrenci1.ad!) // Hafıza yönetiminde iki nesneninde aynı yeri işaret etmesidir.


//Değer Tip Örnek
struct Kopek{
    var renk:String?
}

var kopek1 = Kopek()
kopek1.renk = "kırmızı"

var kopek2 = kopek1
kopek2.renk = "beyaz"

print(kopek1.renk!)




