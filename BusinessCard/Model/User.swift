//
//  User.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/07.
//

import Foundation
import FirebaseFirestore

struct User {
    let db = Firestore.firestore()
    var uuid: String
    var name: String


    init(uuid: String, name: String) {
        self.uuid = uuid
        self.name = name
    }

    func getAuth() -> DocumentReference {
         db.collection("user").document(self.uuid)
    }



}
