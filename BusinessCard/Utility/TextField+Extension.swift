//
//  TextField+Extension.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/04.
//

import Foundation
import SwiftUI

extension TextField {

    func textField() -> some View {
        self
            .frame(width: 327, alignment: .leading)
            .padding(.top, 10)

    }

    func authForms() -> some View {
        self
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 0)
            )
            .background(Color(UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor).cornerRadius(15))
            .padding(.horizontal, 100)
    }
}

extension SecureField {
    func authForms() -> some View {
        self
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 0)
            )
            .background(Color(UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor).cornerRadius(15))
            .padding(.horizontal, 100)
    }
}
