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

//    func getData(card: Card) {
//        print(card)
//        let cardRef = user.getAuth().collection("cards").document("ksIi0cte3GbBHufctWk8")
//        cardRef.getDocument { (user, error) in
//            if let user = user {
//                let data = user.data().map(String.init(describing: )) ?? "nil"
//                print("Document data: \(data)")
//            } else {
//                print("Document does not exist")
//            }
//        }
//
//    }

    func saveData(card: Card) {
        var ref: DocumentReference? = nil
        let cardRef = user.getAuth().collection("cards").addDocument(data: [
            "name": card.name,
            "furigana": card.furigana,
            "organizationName": card.organizationName
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
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
