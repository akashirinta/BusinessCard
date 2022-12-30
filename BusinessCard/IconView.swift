//
//  IconView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/31.
//

import SwiftUI

struct IconView: View {
    var body: some View {
       Image("apple")
            .resizable()
            .frame(width: 50, height: 50)
            .cornerRadius(50)
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
