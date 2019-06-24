//
//  CreateAccountViewController.swift
//  FandaGear Albums
//
//  Created by Filip Graniczny on 6/23/19.
//  Copyright © 2019 Filip Graniczny. All rights reserved.
//

import UIKit
import WebKit

class CreateAccountViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var web: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://albums.fandagear.com/newAccount.php")!
        web.load(URLRequest(url: url))

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
