/*
 Inheritance - Kalıtım
     Mevcut bir sınıftan başka bir sınıf türetmek için kullanılır.
         • Kodun tekrar kullanabilirliğini artırır.
         • Sadece class için geçerlidir.
         • : işareti ile tanımlanır.
         • Bir sınıfın tek kalıtımı olabilir.
         • Bir sınıfa birden fazla sınıf kalıtım yolu ile bağlanamaz.
         • Üst sınıfa superclass denir.
         • Alt sınıfa subclass denir.
 */


class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray : Ev { //Ev classının özelliklerini Saray classımıza aktardık
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)  //Ev classındaki property
    }
}

class Villa :Ev{
    var garajVarmi:Bool?
    
    init(garajVarmi:Bool,pencereSayisi:Int){
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 30)
var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 10)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)
print(bogazVilla.garajVarmi!)


