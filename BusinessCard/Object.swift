//
//  Object.swift
//  BusinessCard
//
//  Created by Tony Stark on 2023/01/12.
//

import Foundation

class Object: ObservableObject {
    @Published var instagramURL: String = "https://www.instagram.com/akashirinta/"
    @Published var twitterURL : String = "https://twitter.com/tHS7ccbSVY6iHHH"
    @Published var isFlipped: Bool = false
}
