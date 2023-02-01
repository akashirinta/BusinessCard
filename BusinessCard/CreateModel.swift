//
//  CreateModel.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/04.
//

import Foundation
import FirebaseFirestore
import FirebaseStorage

struct CreateModel {

    let user = User(uuid: "qppSOpqb6mc8VeNV6i54", name: "fuma")

    func saveData(card: Card) {
        user.getAuth().collection("cards").addDocument(data: [
            "icon": card.icon,
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

    // TODO: 画像ごとのフォルダを作成し保存できるようにする
    // 例えば images/(uid)/(画像id).jpg
    //or images/(作成日時)/(ランダム数).jpg
    func getImageURL(completion: @escaping (String?) -> ()) {

        let storageRef = Storage.storage().reference().child("images/myimage.jpg")
        storageRef.downloadURL { (url, error) in
            if let error = error {
                print(error)
                completion("")
            } else {
                completion(url?.absoluteString)
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
