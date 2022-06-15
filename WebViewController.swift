//
//  WebViewController.swift
//  ScrollViewProject
//
//  Created by user on 26.05.2022.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {
    
    //Variable
    var myWebView = WKWebView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.apple.com")
               let myRequest = URLRequest(url: myURL!)
               myWebView.load(myRequest)
        
    }
    
    //MARK - Method
    override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            myWebView = WKWebView(frame: .zero, configuration: webConfiguration)
            myWebView.uiDelegate = self
            view = myWebView
        }

   

}
