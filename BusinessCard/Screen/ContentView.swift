//
//  ContentView.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {

    @StateObject var authUser = AuthUser.shared

    var body: some View {
        NavigationView {
            if authUser.isLoggined {
                HomeView()
            } else {
                LoginView()
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
