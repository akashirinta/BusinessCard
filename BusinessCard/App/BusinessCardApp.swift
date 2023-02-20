//
//  BusinessCardApp.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/29.
//

import SwiftUI

@main
struct BusinessCardApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            Login()
        }
    }
}
