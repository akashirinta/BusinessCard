//
//  setting.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/25.
//

import SwiftUI
import FirebaseAuth

struct setting: View {

    @State  var isActive:Bool = false

    var body: some View {
        NavigationView {
            VStack {

                Button(action: {
                    do {
                        try Auth.auth().signOut()
                        isActive = true
                    } catch {
                        print("error")
                    }
                }) {
                    Text("ログアウト")
                }
            }
        }
    }
}

struct setting_Previews: PreviewProvider {
    static var previews: some View {
        setting()
    }
}
