//
//  CreateModel.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/04.
//

import Foundation

struct CreateModel {

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
