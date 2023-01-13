//
//  CardListView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2023/01/12.
//

import SwiftUI

struct CardListView: View {
    @ObservedObject var object = Object()
    var body: some View {
        VStack{
            ScrollView{
                ForEach(1..<5){ _ in
                    CardView()
                      
                }
            }
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
    }
}
