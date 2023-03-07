//
//  IconView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/31.
//

import SwiftUI

struct IconView: View {
    
    let icon: String
    
    var body: some View {
        AsyncImage(url: URL(string: "icon")) { phase in
            if let image = phase.image {
                image.resizable()
            } else {
                ProgressView()
            }
        }
        .frame(width: 50, height: 50)
        .clipShape(Circle())
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(icon: "")
    }
}
