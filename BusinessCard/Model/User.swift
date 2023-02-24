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

    func registrationUser() {
        db.collection("user").document(self.uuid).setData([
            "uuid": self.uuid,
            "name": self.name,
            "createdTime": generateCurrentTimeStamp()
        ])
    }

    func getUser() -> DocumentReference {
         db.collection("user").document(self.uuid)
    }


    func generateCurrentTimeStamp () -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy_MM_dd_hh_mm_ss"
        return (formatter.string(from: Date()) as NSString) as String
    }
}
