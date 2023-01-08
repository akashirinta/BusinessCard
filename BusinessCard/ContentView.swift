//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct ContentView: View {

    @State var tabSelection: Int = 1
    var card: Card = Card(name: "name", furigana: "furigana", organizationName: "schoolname", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: "")

    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some View {

        TabView(selection: $tabSelection) {

            ScrollView{
                VStack{

                    CardView(card: card)
                            .overlay {
                                ForEach(0..<10){ i in
                                    CardView(card: card)
                                        .padding(.top, CGFloat(i + 1) * 150)
                                }

                            }

                }
            }
            .tabItem {
                Label("Home", systemImage: "folder.fill.badge.person.crop")
            }
            .tag(1)

            CreateView(tabSelection: $tabSelection)
                .tabItem {
                    Label("Create", systemImage: "folder.fill.badge.plus")
                }
                .tag(2)

            ScrollView{
                VStack{
                    CardView(card: card)
                        .overlay {
                            ForEach(0..<10){ i in
                                CardView(card: card)
                                    .padding(.top, CGFloat(i + 1) * 150)
                            }

                        }
                }
            }
            .tabItem {
                Label("Home", systemImage: "folder.badge.minus")
            }
            .tag(3)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
