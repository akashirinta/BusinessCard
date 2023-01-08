//
//  CreateViewModel.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/03.
//

import Foundation
import Combine
import UIKit

class CreateViewModel: ObservableObject {

    @Published var image: UIImage?
    @Published var name: String = ""
    @Published var furigana: String = ""
    @Published var organizationName: String = ""
    @Published var mailaddress: String = ""
    @Published var phoneNumber: String = ""
    @Published var address: String = ""
    @Published var twitter: String = ""
    @Published var instagram: String = ""
    private var model = CreateModel()

    func isvalidatedButton() -> Bool {
        model.isValidated(name: name, furigana: furigana, organizationName: organizationName)
    }

    func createdCardInfo() -> Card {
        Card(
            name: name,
            furigana: furigana,
            organizationName: organizationName,
            mailaddress: mailaddress,
            phoneNumber: phoneNumber,
            address: address,
            twitter: twitter,
            Instagram: instagram
        )
    }

    func createCard() {
        model.saveData(card: createdCardInfo())
    }

}
