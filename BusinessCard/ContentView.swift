//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {
        TabView{
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
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
