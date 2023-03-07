//
//  IconToggle.swift
//  BusinessCard
//
//  Created by Tony Stark on 2023/03/04.
//

import SwiftUI

struct IconToggle: View {
    
    @Binding var isOn: Bool
    let onImage: String
    let offImage: String
    
    var body: some View {
        Button(action: {
            self.isOn.toggle()
        }) {
            Image(systemName: isOn ? onImage : offImage)
                .foregroundColor(isOn ? .blue : .gray)
        }
    }
}

struct IconToggle_Previews: PreviewProvider {
    @State static var isOn = true
    static var previews: some View {
        IconToggle(isOn: $isOn, onImage: "list.bullet", offImage: "square.grid.2x2")
    }
}
