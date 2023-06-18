//
//  FormValidator.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 18.06.2023.
//

import Foundation

final class FormValidator {
    
    static let shared = FormValidator()
    
    private init() { }
    
    func validate(text: String, regex: FormValidationRegex) -> Bool {
        guard let regex = try? NSRegularExpression(pattern: regex.rawValue) else {
            return false
        }
        
        let range = NSRange(text.startIndex..., in: text)
        let isMatch = regex.firstMatch(in: text, options: [], range: range) != nil
        
        return isMatch
    }
    
}
