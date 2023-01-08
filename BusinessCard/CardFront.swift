//
//  CardFront.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct CardFront: View {

    @State private var paddingValue: CGFloat = 0
    @State private var bool = false
    var card: Card
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300, height: 200)
                .foregroundColor(.red)
                .cornerRadius(15)
                .padding(.bottom, paddingValue)
            VStack{
                HStack{
                    Text("\(card.organizationName)")
                        .font(.title3)
                        .padding(.leading)
                    Spacer()
                   IconView()
                                          
                        .padding([.top, .trailing])
                }
                Spacer()
                VStack(spacing: -10){
                    Text("\(card.furigana)")
                        .font(.subheadline)
                    Text("\(card.name)")
                        .font(.largeTitle)
                }
                Spacer()
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "arrow.triangle.2.circlepath")
                            .padding(.leading)
                        
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
            .frame(width: 300, height: 200)
            .padding(.bottom, paddingValue)
        }
        .onTapGesture {
            self.paddingValue = self.bool ? CGFloat(250) : CGFloat(0)
            self.bool.toggle()
        }
        .overlay(
        RoundedRectangle(cornerRadius: 16)
            .stroke(Color.black, lineWidth: 2)
        )
    }
}

struct CardFront_Previews: PreviewProvider {
    static var previews: some View {
        CardFront(card: Card(name: "", furigana: "", organizationName: "", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: ""))
    }
}
