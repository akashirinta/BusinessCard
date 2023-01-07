//
//  WebViewI.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/31.
//

import SwiftUI
import WebKit

struct WebViewI: UIViewRepresentable {
    var url: String = "https://www.instagram.com/akashirinta/"
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}

struct WebViewI_Previews: PreviewProvider {
    static var previews: some View {
        WebViewI()
    }
}
