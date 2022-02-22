
//Composition : İlişki kurma class lar içinde (ForeignKey)

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

//Composition burası diğer class lar ile ilişki kuruyoruz
class Filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler){
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}


//Kullanılması ;

    var k = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
    var y = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quentin Tarantino")
    var f = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k, yonetmen: y)

    print("Film id : \(f.film_id!)")
    print("Film adi : \(f.film_ad!)")
    print("Film yil : \(f.film_yil!)")
    print("Film kategori : \(f.kategori!.kategori_ad!)")
    print("Film id : \(f.yonetmen!.yonetmen_ad!)")
