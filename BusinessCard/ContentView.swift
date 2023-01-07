//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct ContentView: View {

    @State var tabSelection: Int = 1

    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some View {

        TabView(selection: $tabSelection) {

            ScrollView{
                VStack{

                        CardFront()
                            .overlay {
                                ForEach(0..<10){ i in
                                CardFront()
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
                    CardView()
                        .overlay {
                            ForEach(0..<10){ i in
                            CardView()
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
