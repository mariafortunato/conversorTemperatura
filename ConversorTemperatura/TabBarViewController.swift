//
//  TabBarViewController.swift
//  ConversorTemperatura
//
//  Created by Maria Alice Rodrigues Fortunato on 28/03/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.unselectedItemTintColor = .black
        tabBar.selectedItem?.badgeColor = .red
    }
    

}
