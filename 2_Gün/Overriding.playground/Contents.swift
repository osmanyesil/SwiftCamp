
//Overriding : Aynı metodu kalıtım yolu ile alt sınıflar tarafından tekrar kullanılmasıdır.

class Hayvan{
    func sesCikar(){
        print("Sesim yok")
    }
}

class Memeli : Hayvan {
    
}

class Kedi : Memeli {
    override func sesCikar() {
        print("Miyav Miyav")
    }
}

class Kopek : Memeli {
    override func sesCikar() {
        print("Hav Hav")
    }
}

var hayvan = Hayvan()
var memeli = Memeli()
var kedi = Kedi()
var kopek = Kopek()

hayvan.sesCikar()
memeli.sesCikar()
kedi.sesCikar()
kopek.sesCikar()
