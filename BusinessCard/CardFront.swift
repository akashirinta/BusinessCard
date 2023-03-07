//
//  CardFront.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct CardFront: View {
    @State private var isFlipped = false
    
    @State private var bool = false
    var card: Card
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 280, height: 180)
                .foregroundColor(.red)
                .cornerRadius(15)
                
            VStack{
                HStack{
                    
                    Text(" \(card.organizationName)")
                    
                        .font(.title3)
                        .padding(.leading)
                    Spacer()
                    IconView(icon: card.icon)
                    //                icon: card.icon
                        .padding([.top, .trailing])
                }
                Spacer()
                VStack(spacing: -10){
                    
                    Text("\(card.furigana)")
                    //                    \(card.furigana)
                        .font(.subheadline)
                    Text(" \(card.name)")
                    //                    \(card.name)
                        .font(.largeTitle)
                }
                
                Spacer()
                HStack{
                    
                    Spacer()
                    HStack{
                        Image(systemName: "arrow.triangle.2.circlepath")
                            .padding([.bottom, .leading])
                        
                        Spacer()
                        VStack{
                            
                            if let phoneNumber = card.phoneNumber {
                                Text("\(phoneNumber)")
                            }
                            
                            if let mailaddress = card.mailaddress {
                                Text("\(mailaddress)")
                            }
                            
                        }
                        .padding([.bottom,.trailing])
                    }
                    
                }
                
            }
            .frame(width: 280, height: 180)
            
        }
     
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

struct CardFront_Previews: PreviewProvider {
    static var previews: some View {
        
        CardFront(card: Card(icon: "", name: "", furigana: "", organizationName: "", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: ""))
        
    }
}
