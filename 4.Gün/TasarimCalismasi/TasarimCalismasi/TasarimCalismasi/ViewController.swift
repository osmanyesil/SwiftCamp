//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by osmanyesil on 2/21/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }


    func setupUI(){
        self.navigationItem.title = "Pizza"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "mainColor") //Arkaplan rengi
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,
                                          NSAttributedString.Key.font: UIFont(name: "Pacifico-Regular", size: 22)!] //Başlık rengi
        
        navigationController?.navigationBar.isTranslucent = true // //RGB renk paletine göre arka planı yükler
        navigationController?.navigationBar.barStyle = .black //Status bar rengi değişimi
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }
}

