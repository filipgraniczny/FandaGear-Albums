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
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    var user = loggedInUser()
    override func viewDidLoad() {
        super.viewDidLoad()
        errorContainer.isHidden = true
        errorMessage.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func loginTapped(_ sender: Any) {
        checkCredentials(username: usernameField.text!, password: passwordField.text!)
    }
    
    func checkCredentials(username:String, password:String){
        let urlString = "https://albums.fandagear.com/app/login.php?username=\(username)&password=\(password)"
        
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with:url!) { (data, response, error) in
            if error != nil {
                self.displayError(err: "Could not connect to database.")
            } else {
                do {
                    let parsedData = try JSONSerialization.jsonObject(with: data!, options: []) as! [String:Any]
                    
                    print(parsedData["result"]!)

                    if((parsedData["result"]! as AnyObject).isEqual("true")){
                        // Correct Credentials
                        self.user.username = username
                        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                            let vc = segue.destination as? HomeViewController
                            vc?.user = self.user
                        }
                        DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "postLogIn", sender: self)
                        }
                    }
                    else{
                        self.displayError(err: "Login credentials incorrect.")
                    }
                    
                } catch let error as NSError {
                    self.displayError(err: "Could not connect to database.")
                }
            }
            
            }.resume()
    }
    func displayError(err:String){
        DispatchQueue.main.async {
        self.errorMessage.text = err
        self.errorContainer.isHidden = false
        self.errorMessage.isHidden = false
        }
    }
    

}

