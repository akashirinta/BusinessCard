//
//  WebViewT.swift
//  BusinessCard
//
//  Created by Tony Stark on 2022/12/31.
//

import SwiftUI
import WebKit

struct WebViewT: UIViewRepresentable {
    var url: String = "https://twitter.com/tHS7ccbSVY6iHHH"
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}

struct WebViewT_Previews: PreviewProvider {
    static var previews: some View {
        WebViewT()
    }
}
