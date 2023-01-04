//
//  CardBack.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct CardBack: View {
    @State private var isWebViewI: Bool = false
    @State private var isWebViewT: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300, height: 200)
                .foregroundColor(.blue)
                .cornerRadius(15)
            VStack{
                Text("Address")
                    .font(.title2)
                HStack{
                    Button(action: {
                        isWebViewI = true
                    }) {
                        Image("i")
                            .resizable()
                        .frame(width: 50, height: 50)                    }.sheet(isPresented: $isWebViewI){
                            WebViewI()
                        }
                    Button(action: {
                        isWebViewT = true
                    }) {
                        Image("t")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }.sheet(isPresented: $isWebViewT){
                        WebViewT()
                    }
                  
                }
            }
            .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
            .scaleEffect(x: 1, y: -1, anchor: .center)
            .frame(width: 300, height: 200)
            
        }
        
    }
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        CardBack()
    }
}
