//
//  PasswordViewController.swift
//  SuperSenha
//
//  Created by Eduardo Frederico on 26/07/23.
//

import UIKit

class PasswordViewController: UIViewController {
    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func generate(_ sender: UIButton) {
        
    }
}
