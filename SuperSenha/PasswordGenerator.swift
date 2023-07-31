//
//  PasswordGenerate.swift
//  SuperSenha
//
//  Created by Eduardo Frederico on 27/07/23.
//

import Foundation

class PasswordGenerator {
    
    var numberOfCharacters: Int
    var useLetters: Bool
    var useSpecialCharacters: Bool
    var useCapitalLetters: Bool
    var useNumbers: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvxwyz"
    private let numbers = "0123456789"
    private let specialCharacters = "˜!@#$%ˆ&*()_+{}][:;?/><.,÷≥≤µ≠–ºª•¶§∞¢£™¡"
    
    init(numberOfCharacters: Int, useLetters: Bool, useSpecialCharacters: Bool, useCapitalLetters: Bool, useNumbers: Bool) {
        
        var numChars = min(numberOfCharacters, 16)
        numChars = max(numChars, 1)
        
        self.numberOfCharacters = numChars
        self.useLetters = useLetters
        self.useSpecialCharacters = useSpecialCharacters
        self.useCapitalLetters = useCapitalLetters
        self.useNumbers = useNumbers
    }
    
    func generate(total: Int) -> [String] {
        
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        
        if useCapitalLetters {
            universe += letters.uppercased()
        }
        
        if useNumbers {
            universe += numbers
        }
        
        if useSpecialCharacters {
            universe += specialCharacters
        }
        
        let universeArray = Array(universe)
        
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(universe.count)))
                password += String( universeArray[index])
            }
            passwords.append(password)
        }
        
        
        return passwords
    }
}
