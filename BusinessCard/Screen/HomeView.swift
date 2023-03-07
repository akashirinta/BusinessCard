//
//  HomeView.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/03/01.
//

import SwiftUI

struct HomeView: View {
    @State var tabSelection: Int = 1
    @State var isOn = false
    var card: Card = Card(icon: "https://drive.google.com/file/d/1_HQqFQgWBjQNyUiiw30_fvo7Jl9ihiJp/view?usp=sharing", name: "name", furigana: "furigana", organizationName: "schoolname", mailaddress: "", phoneNumber: "", address: "", twitter: "", Instagram: "")

    init() {
        UITabBar.appearance().backgroundColor = .gray
        UINavigationBar.appearance().backgroundColor = .green
    }

    var body: some View {
        TabView(selection: $tabSelection) {
            ScrollView {
                VStack {
                    IconToggle(isOn: $isOn, onImage: "square.grid.2x2", offImage:"list.bullet")
                        .font(.system(size: 30))
                    if isOn {
                        ForEach(0..<10){ _ in
                            CardView(card: card)
                                .padding(.top, 20)
                        }
                    } else {
                        ForEach(0..<5) { _ in
                            HStack(spacing: -120) {
                                ForEach(0..<2) { _ in
                                    CardView(card: card)
                                        .scaleEffect(CGSize(width:0.5, height: 0.5))
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

            setting()
                .tabItem {
                    Label("setting", systemImage: "gearshape")
                }

        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
