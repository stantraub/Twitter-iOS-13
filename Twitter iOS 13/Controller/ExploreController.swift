//
//  ExploreController.swift
//  Twitter iOS 13
//
//  Created by Stanley Traub on 7/4/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import UIKit

class ExploreController: UIViewController {
    //MARK: - Properties

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}

