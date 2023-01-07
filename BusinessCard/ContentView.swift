//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    @State private var showCreate: Bool = false
    var body: some View {
        NavigationView {
            NavigationLink(destination: CreateView()) {
                Text("作成")
            }


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
