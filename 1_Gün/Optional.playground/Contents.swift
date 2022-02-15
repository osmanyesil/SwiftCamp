import UIKit

print("-----------Optionals - Nullable ----------------------")

//Null yani nil olma kontrolünü sıkılaştırma
/*
 ? :  Değişken nil olabilir
 ! :  Değişken nil olamaz
 
 
 */

var str:String? //Eğer default değer tanımlamaz ise ? eklenmelidir

str = "Merhaba"

if str != nil {
    print(str!) //Unwrap : Optionalden kurtarma ; Değerin her türlü olduğundan eminsek eğer unwrap
}else {
    print("str nil değer içeriyor")
}


//Doğru kullanım if let yapısıdır
if let temp = str { // Optional Binding
    print(temp) //Otomatik unwrap
}else {
    print("Nil")
}

if var temp = str {
    print(temp)
    temp = "Hello World"
    print(temp)
}else {
    print("str nil değer içeriyor")
}
