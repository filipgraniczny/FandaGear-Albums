//
//  HomeViewController.swift
//  FandaGear Albums
//
//  Created by Filip Graniczny on 6/28/19.
//  Copyright © 2019 Filip Graniczny. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        welcomeLabel.text = "Hello, " + UserDefaults.standard.string(forKey: "user_data")! + "!"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
