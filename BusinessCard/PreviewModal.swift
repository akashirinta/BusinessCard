//
//  PreviewModal.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/04.
//

import SwiftUI

struct PreviewModal: View {

    var cardInfo: Card
    
    var body: some View {
        CardView(card: cardInfo)
    }
}

struct PreviewModal_Previews: PreviewProvider {
    static var previews: some View {
        PreviewModal(cardInfo: Card(name: "", furigana: "", organizationName: "", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: ""))
    }
}
