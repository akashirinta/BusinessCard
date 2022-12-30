//
//  CardBack.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct CardBack: View {
    var body: some View {
        Text("Back")
            .frame(width: 300, height: 200)
            .background(Color.green)
            .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
            .scaleEffect(x: 1, y: -1, anchor: .center)    }
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        CardBack()
    }
}
