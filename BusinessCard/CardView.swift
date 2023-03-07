//
//  CardView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct CardView: View {

    @State private var isFlipped = false
    var card: Card

    var body: some View {
        ZStack {
            if isFlipped {
                CardBack(card: card)
                    .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 2)
                    )
                    .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
            } else {
            
                    CardFront(card: card)
                    
                       
    //
                    
                        .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.black, lineWidth: 2)
                        )
                        
                    
                    .rotation3DEffect(.degrees(isFlipped ? 180 : 0),axis: (x: 0, y: 1, z: 0))
                
               }
            }
        
        .onTapGesture {
            withAnimation(.easeInOut(duration: 1)) {
                isFlipped = !isFlipped
                
            }
            // CardBackビューを描画する処理
          
        }
        .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 1, y: 0, z: 0), anchor: .center)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {

        CardView(card: Card(icon: "", name: "", furigana: "", organizationName: "", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: ""))

        
    }
}
//card: Card(icon: "", name: "", furigana: "", organizationName: "", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: "")
