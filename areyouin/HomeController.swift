//
//  ViewController.swift
//  areyouin
//
//  Created by Mudasir Ahmed on 7/12/18.
//  Copyright © 2018 Mudasir Ahmed. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationItems()
    }
    
    func setupNavigationItems() {
        navigationItem.titleView = UIImageView(image:#imageLiteral(resourceName: "logo-blue"))
    }

}

