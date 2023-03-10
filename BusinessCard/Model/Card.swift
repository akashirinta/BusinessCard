//
//  Card.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/04.
//

import Foundation
import UIKit

struct Card: Codable {

    var icon: String?
    var name: String = ""
    var furigana: String = ""
    var organizationName: String = ""
    var mailaddress: String?
    var phoneNumber: String?
    var address: String?
    var twitter: String?
    var Instagram: String?

    init(icon: String?, name: String, furigana: String, organizationName: String, mailaddress: String?, phoneNumber: String?, address: String?, twitter: String?, Instagram: String?) {

        self.icon = icon ?? "https://drive.google.com/file/d/1_HQqFQgWBjQNyUiiw30_fvo7Jl9ihiJp/view?usp=sharing"
        self.name = name
        self.furigana = furigana
        self.organizationName = organizationName
        self.mailaddress = mailaddress
        self.phoneNumber = phoneNumber
        self.address = address
        self.twitter = "https://twitter.com/\(twitter ?? "")"
        self.Instagram = "https://www.instagram.com/\(Instagram ?? "")"
        
    }
}
