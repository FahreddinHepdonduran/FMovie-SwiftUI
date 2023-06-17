//
//  LoginView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 6.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var emailInput: String = ""
    @State private var passwordInput: String = ""
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Image("marvelLogo")
                    
                    VStack(spacing: 15.0) {
                        TextField("Enter your Email ID", text: $emailInput)
                            .frame(height: 50.0)
                            .background(Color.white)
                            .padding([.leading, .trailing], 30.0)
                        
                        SecureField("Password", text: $passwordInput)
                            .frame(height: 50.0)
                            .background(Color.white)
                            .padding([.leading, .trailing], 30.0)
                    }
                }
            }
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
