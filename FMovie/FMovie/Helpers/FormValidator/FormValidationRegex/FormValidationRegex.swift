//
//  FormValidationRegex.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 18.06.2023.
//

import Foundation

enum FormValidationRegex: String {
    case email = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3,}$"
    case password = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$"
}
