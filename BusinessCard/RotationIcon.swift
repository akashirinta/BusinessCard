//
//  RotationIcon.swift
//  BusinessCard
//
//  Created by Tony Stark on 2023/01/12.
//

import SwiftUI

struct RotationIcon: View {
        @ObservedObject var object = Object()
    var body: some View {
        Image(systemName: "arrow.triangle.2.circlepath")
      
    }
}

struct RotationIcon_Previews: PreviewProvider {
    static var previews: some View {
        RotationIcon()
    }
}
