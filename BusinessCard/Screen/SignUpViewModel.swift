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
    @Published var errorMsg: String = ""

    var auth = AuthUser.shared

    func signUp() {
        auth.signUp(
            username: username,
            email: email,
            password: password
        )
    }

    func signIn() {
        auth.signIn(email: email, password: password)
    }

    func signOut() {
        auth.signOut()
    }

    func isValidated(isSignUp: Bool) {
        if isSignUp {
            if username == "" {
                errorMsg += "ユーザー名を入力してください\n"
            }
        }
        if email == "" {
            errorMsg += "メールアドレスを入力してください\n"
        }
        if password == "" {
            errorMsg += "パスワードを入力してください\n"
        }
    }
}
