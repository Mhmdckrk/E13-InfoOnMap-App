//
//  DetailViewController.swift
//  Project16
//
//  Created by Mahmud CIKRIK on 25.10.2023.
//

import UIKit
import WebKit

class DetailViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    var detailItem: String?
    
    override func loadView() {
    
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        webView.navigationDelegate = self
        
        guard let detailItem = detailItem else { return }
        
        if let url = URL(string: "\(detailItem)") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
        webView.allowsBackForwardNavigationGestures = true
        
    }
    
}

