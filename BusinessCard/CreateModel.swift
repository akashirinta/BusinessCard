//
//  CreateModel.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/04.
//

import Foundation
import FirebaseFirestore

struct CreateModel {

    let user = User(uuid: "qppSOpqb6mc8VeNV6i54", name: "fuma")

    func saveData(card: Card) {
        user.getAuth().collection("cards").addDocument(data: [
            "name": card.name,
            "furigana": card.furigana,
            "organizationName": card.organizationName,
            "mailaddress": card.mailaddress ?? "",
            "phoneNumber": card.phoneNumber ?? "",
            "address": card.address ?? "",
            "twitter": card.twitter ?? "",
            "instagram": card.Instagram ?? ""
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            }

        }
    }


    func isValidated(name: String?, furigana: String?, organizationName: String?) -> Bool {
        guard
            let name = name,
            let furigana = furigana,
            let organizationName = organizationName
        else{ return false }

        let isValidName = !name.isEmpty && !furigana.isEmpty && !organizationName.isEmpty


        return isValidName
    }
}
