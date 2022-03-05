//
//  ViewController.swift
//  KullaniciEtkilesim
//
//  Created by osmanyesil on 2/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in
            print("İptal Seçildi.")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam Seçildi.")
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in
            print("İptal Seçildi.")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam Seçildi.")
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField{
            textfield in
            textfield.placeholder = "Veri Giriniz"
            textfield.keyboardType = .numberPad
            textfield.isSecureTextEntry = true
        }
        
        let iptalAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in
            
            let textField = alertController.textFields![0] as UITextField
            if let alinanVeri = textField.text {
                print("Veri : \(alinanVeri)")
            }
        }
        
        alertController.addAction(iptalAction)
        
        self.present(alertController, animated: true)
    }
    
}

