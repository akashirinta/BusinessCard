//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    @State var tabSelection: Int = 1
    
    var card: Card = Card(icon: "", name: "name", furigana: "furigana", organizationName: "schoolname", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: "")
    
    init() {
        UITabBar.appearance().backgroundColor = .gray
        //        UINavigationBar.appearance().barTintColor = UIColor.green
        UINavigationBar.appearance().backgroundColor = .green
    }
    
    
    var body: some View {
        TabView(selection: $tabSelection) {
            
            
            
            ScrollView {
                VStack {
                    
                    IconToggle(isOn: $isOn, onImage: "square.grid.2x2", offImage:"list.bullet")
                    
                        .font(.system(size: 30))
                    if isOn {
                        ForEach(0..<10){ i in CardView(card: card)
                            
                                .padding(.top, 20)
                            
                        }
                        
                    } else{
                        ForEach(0..<5) { _ in
                            HStack(spacing: -120) {
                                ForEach(0..<2) { _ in
                                    CardView(card: card)
                                        .scaleEffect(CGSize(width: 0.5,                                                 height: 0.5))
                                        .padding(.bottom,-80)
                                }
                            }
                        }
                    }
                    
                }
                .frame(width: 400)
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
