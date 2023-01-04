//
//  AppDelegate.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/05.
//

import Foundation
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
    }
}
