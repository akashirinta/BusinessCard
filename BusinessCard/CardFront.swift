//
//  CardFront.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct CardFront: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300, height: 200)
                .foregroundColor(.red)
                .cornerRadius(15)
            VStack{
                HStack{
                    Text("School name")
                        .font(.title3)
                        .padding(.leading)
                    Spacer()
                   IconView()
                                          
                        .padding([.top, .trailing])
                }
                Spacer()
                VStack(spacing: -10){
                    Text("Furigana")
                        .font(.subheadline)
                    Text("name")
                        .font(.largeTitle)
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("TEL")
                        Text("Mail")
                    }
                    .padding([.bottom,.trailing])
                }
                
            }
            .frame(width: 300, height: 200)
        }
    }
}

struct CardFront_Previews: PreviewProvider {
    static var previews: some View {
        CardFront()
    }
}
