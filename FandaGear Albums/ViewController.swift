//
//  ViewController.swift
//  FandaGear Albums
//
//  Created by Filip Graniczny on 6/23/19.
//  Copyright © 2019 Filip Graniczny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorContainer: UIView!
    @IBOutlet weak var errorMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        errorContainer.isHidden = true
        errorMessage.isHidden = true
        // Do any additional setup after loading the view.
    }


}

