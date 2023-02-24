//
//  AuthUser.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/22.
//

import Foundation
import FirebaseAuth

struct AuthUser {

    func createAuth(email: String, password: String) {
        print(email, password)
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let user = authResult?.user {
                print(user.uid)
                User(uuid: user.uid, name: "名無し").registrationUser()
            } else {
                print(error!)
            }
        }
    }
}
