//
//  AppDelegate.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/01/05.
//

import Foundation
import FirebaseCore

// firebaseのログイン機能参考資料
// https://tech.amefure.com/swift-firebase-realtime-authentication
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
    }
}
