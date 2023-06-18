//
//  FormValidationViewModel.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 18.06.2023.
//

import SwiftUI
import Combine

final class FormValidationViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isFieldsValid: Bool = false
    
    var didPerformBindings: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        bindings()
    }
    
}

private extension FormValidationViewModel {
    
    func bindings() {
        Publishers.CombineLatest($email, $password)
            .map { (email, password) in
                return FormValidator.shared
                    .validate(text: email, regex: .email)
                &&
                FormValidator.shared
                    .validate(text: password, regex: .password)
            }
            .sink { [weak self] flag in
                self?.isFieldsValid = flag
            }
            .store(in: &cancellables)
        
        didPerformBindings.toggle()
    }
    
}
