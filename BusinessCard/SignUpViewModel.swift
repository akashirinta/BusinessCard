//
//  SignUpViewModel.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/22.
//

import Foundation

class SignUpViewModel: ObservableObject {

    @Published var email: String = ""
    @Published var password: String = ""

    var auth = AuthUser()

    func signUp() {
        
        auth.createAuth(email: email, password: password)
    }
}
