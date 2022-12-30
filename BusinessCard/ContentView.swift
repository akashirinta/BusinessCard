//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            CardView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
