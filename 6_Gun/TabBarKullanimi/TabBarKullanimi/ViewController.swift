//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by osmanyesil on 2/26/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let firstItem = tabItems[0]
            firstItem.badgeValue = "2"
            let secondItem = tabItems[1]
            secondItem.badgeValue = "New"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.gray
        
        itemRenkDegistir(itemApperance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemApperance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemApperance: appearance.compactInlineLayoutAppearance)
        
        badgeRenkDegistir(itemApperance: appearance.stackedLayoutAppearance)
        badgeRenkDegistir(itemApperance: appearance.inlineLayoutAppearance)
        badgeRenkDegistir(itemApperance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }

    func itemRenkDegistir(itemApperance: UITabBarItemAppearance){
        //Seçili olmayan durum
        itemApperance.normal.iconColor = UIColor.white
        itemApperance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        //Seçili durum
        itemApperance.selected.iconColor = UIColor.yellow
        itemApperance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.yellow]
    }
    
    func badgeRenkDegistir(itemApperance:UITabBarItemAppearance){
        //Seçili olmayan durum
        itemApperance.normal.badgeBackgroundColor = UIColor.green
        //Seçili durum
        itemApperance.selected.badgeBackgroundColor = UIColor.blue
    }

}

