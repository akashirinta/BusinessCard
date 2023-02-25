//
//  AuthUser.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/22.
//

import Foundation
import FirebaseAuth

struct AuthUser {

    let auth = Auth.auth()

    func signUp(username: String, email: String, password: String) {
        print(email, password)
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if let user = authResult?.user {
                print(user.uid)
                User(uuid: user.uid, name: username).registrationUser()
            } else {
                print(error!)
            }
        }
    }

    func singIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if let user = authResult?.user {
                print(user.uid)
                print("ログイン成功！")
            } else {
                print(error!)
            }
        }
    }

    func isLoginedIn() {
        auth.addStateDidChangeListener { auth, user in
            if user != nil {
              // User is signed in.
                print("サインインした！")
            } else {
              // No user is signed in.
                print("残念")
            }
        }
    }

}
