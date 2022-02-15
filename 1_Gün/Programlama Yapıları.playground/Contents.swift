import UIKit

print("-----------Karşılaştırma Operatörleri----------------------")

var x1 = 50
var x2 = 60

var y1 = 70
var y2 = 80

print(x1 == x2)
print(x1 != x2)
print(x1 > x2)
print(x1 >= x2)
print(x1 < x2)
print(x1 <= x2)

// Or - veya  : false - false : false diğer durumlarda false
print(x1>x2 || y1>y2)
// And - ve   : true - true : true diğer durumlarda false
print(x1>x2 && y1>y2)


print("-----------İf - Şart Blokları----------------------")

var yas = 17
var isim = "Ahmet"

if yas >= 18 {
    print("Reşitsiniz")
}else {
    print("Reşit değilsiniz")
}

if isim == "Ahmet" {
    print("Merhaba Ahmet")
}else if isim == "Mehmet"{
    print("Merhaba Mehmet")
}else {
    print("Tanınmayan kişi")
}

var ka = "admin"
var s = 12345

if ka == "admin" && s == 12345 {
    print("Hoşgeldiniz")
}else {
    print("Hatalı Giriş")
}

var sinif = 10
if sinif == 9 || sinif == 10 {
    print("Sınıf 9 veya 10 dur")
}else {
    print("Sınıf 9 veya 10 değildir")
}


var a = 10
var b = 20

a == b ? print("Eşittir") : print("Eşit değildir")


print("-----------Switch-Case Blokları----------------------")

var gun = 1

switch gun {
case 1:
    print("pazartesi")
case 2:
    print("Salı")
case 3:
    print("Çarşamba")
case 4:
    print("Perşembe")
case 5:
    print("Cuma")
case 6:
    print("Cumartesi")
case 7:
    print("Pazar")
default:
    print("Böyle bir gün yok ")
}


print("-----------Döngü Yapıları----------------------")
// for in
for i in 1...3 {
    print( "Döngü 1 : \(i)")
}

for i in stride(from: 10, to: 20, by: 5) { // 10-20 arası 5 er artarak çalış
    print("Döngü 2 : \(i)")
}

for i in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3 : \(i)")
}


//while

var sayac = 1

while sayac < 4 {
    print("Döngü 4 : \(sayac)")
    sayac+=1 //sayac = sayac + 1
}

print("-----------break-continue----------------------")
//break döngüyü durdurur
//continue döngüyü başa alır


for i in 1...5 {
    if i == 3 {
        break
    }
    print("Döngü 5 : \(i)") // 1,2,3
}

for i in 1...5 {
    if i == 3 {
        continue
    }
    print("Döngü 6 : \(i)") //1,2,4,5
}
