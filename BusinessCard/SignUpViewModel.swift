//
//  SignUpViewModel.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/22.
//

import Foundation

class SignUpViewModel: ObservableObject {

    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""

    var auth = AuthUser()

    func signUp() {
        auth.signUp(
            username: username,
            email: email,
            password: password
        )
    }

    func signIn() {
        auth.singIn(email: email, password: password)
    }
}
