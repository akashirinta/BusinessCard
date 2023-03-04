//
//  setting.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/25.
//

import SwiftUI
import FirebaseAuth

struct setting: View {

    @ObservedObject var viewModel = SignUpViewModel()
    var body: some View {
        NavigationView {
            VStack {

                Button(action: {
                    viewModel.signOut()
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
