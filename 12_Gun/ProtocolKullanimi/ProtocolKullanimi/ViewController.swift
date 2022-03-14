//
//  ViewController.swift
//  ProtocolKullanimi
//
//  Created by osmanyesil on 3/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func buttonGecisYap(_ sender: Any) {
        performSegue(withIdentifier: "toDetay", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.delegate = self
        }
    }
}

extension ViewController : DetayVCToViewControllerProtocol {
    func veriGonder(mesaj: String) { //Dinleme mekanizması
        labelSonuc.text = mesaj
    }
}
