//
//  AuthUser.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/22.
//

import Foundation
import FirebaseAuth

class AuthUser: ObservableObject {

    let auth = Auth.auth()
    @Published private(set) var isLoggined: Bool = (Auth.auth().currentUser != nil)
    static let shared = AuthUser()
    private init() {

    }

    func signUp(username: String, email: String, password: String) {
        print(email, password)
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if let user = authResult?.user {
                User(uuid: user.uid, name: username).registrationUser()
                self.isLoggined = true

            } else {
                print(error!)
                self.isLoggined = true
            }
        }
    }

    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if (authResult?.user) != nil {
                self.isLoggined = true
            } else {
                print(error!)
                self.isLoggined = false
            }
        }
    }

    func signOut() {
        do {
            try auth.signOut()
            self.isLoggined = false
        } catch {
            print("error")
        }
    }
}
