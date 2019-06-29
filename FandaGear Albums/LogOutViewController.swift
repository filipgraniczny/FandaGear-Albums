//
//  LogOutViewController.swift
//  FandaGear Albums
//
//  Created by Filip Graniczny on 6/28/19.
//  Copyright © 2019 Filip Graniczny. All rights reserved.
//

import UIKit

class LogOutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOut(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "user_data")
        
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
