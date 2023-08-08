//
//  LoginView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 6.06.2023.
//

import SwiftUI

struct SignupView: View {
    
    @ObservedObject private var formValidationViewModel = FormValidationViewModel()
    @EnvironmentObject private var appViewModel: AppViewModel
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer(minLength: 40.0)
                
                VStack(spacing: 60.0) {
                    VStack(spacing: 20.0) {
                        VStack(spacing: 40.0) {
                            Image("marvelLogo")
                            
                            VStack(spacing: 15.0) {
                                TextField("Enter your Email ID", text: $formValidationViewModel.email)
                                    .frame(height: 50.0)
                                    .background(Color.white)
                                    .padding([.leading, .trailing], 30.0)
                                
                                SecureField("Password", text: $formValidationViewModel.password)
                                    .frame(height: 50.0)
                                    .background(Color.white)
                                    .padding([.leading, .trailing], 30.0)
                            }
                        }
                        
                        VStack(alignment: .trailing, spacing: 15.0) {
                            Button {
                                appViewModel.sceneType = .home
                            } label: {
                                Text("Signup")
                                    .frame(width: 330.0, height: 50.0)
                                    .border(Color.red, width: 4.0)
                                    .background(formValidationViewModel.isFieldsValid ? .red : .clear)
                                    .foregroundColor(Color.white)
                            }
                            .disabled(!formValidationViewModel.isFieldsValid)
                            
                            Button {
                                print("Forget Password")
                            } label: {
                                Text("Forget Password?")
                                    .foregroundColor(Color.white.opacity(0.7))
                            }
                        }
                    }
                    
                    VStack(spacing: 50.0) {
                        VStack(spacing: 35.0) {
                            Text("or")
                                .foregroundColor(Color.white.opacity(0.5))
                            
                            VStack(spacing: 30.0) {
                                Text("Continue With")
                                    .foregroundColor(.white)
                                
                                HStack(spacing: 10.0) {
                                    Button {
                                        print("Facebook Login")
                                    } label: {
                                        HStack {
                                            Image("facebook-icon")
                                            Text("Facebook")
                                                .foregroundColor(.black)
                                        }
                                        .frame(height: 50.0)
                                        .background(Color.white)
                                    }
                                    
                                    Button {
                                        print("Google Login")
                                    } label: {
                                        HStack {
                                            Image("google-icon")
                                            Text("Facebook")
                                                .foregroundColor(.black)
                                        }
                                        .frame(height: 50.0)
                                        .background(Color.white)
                                    }
                                }
                            }
                        }
                        
                        Button {
                            appViewModel.sceneType = .login
                        } label: {
                            Text("Already have an account? Login")
                                .foregroundColor(Color.white.opacity(0.5))
                        }
                    }
                }
                
                Spacer(minLength: 40.0)
            }
        }
    }
    
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
