//
//  ViewController.swift
//  Login
//
//  Created by Dax Gerber on 9/14/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = Username.text
        }
    }
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "other", sender: sender)
    }
    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "other", sender: sender)
    }
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
}

