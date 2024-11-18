//
//  Infopage.swift
//  CoffeeMasters
//
//  Created by Jahongir Abdujalilov on 11/11/24.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct InfoPage: View {
    
    struct WebView: UIViewRepresentable {
        func makeUIView(context: Context) -> WKWebView {
            let config = WKWebViewConfiguration()
            config.userContentController.add(WebInterfaceDialogs() , name: "alert")
            let webView = WKWebView(frame: .zero, configuration: config)
            return webView // UIKit View
        }
        
        func updateUIView(_ webView: WKWebView, context: Context) {
            let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")
            let request = URLRequest(url: url!)
            webView.load(request)
        }
        
        func executeJavaScript(webView: WKWebView) {
            webView.evaluateJavaScript("alert('Hello from Swift!')")
        }
        
    }
    
    var body: some View {
        VStack {
                    AppTitle()
                    WebView()
                }
    }
}

#Preview {
    InfoPage()
}
