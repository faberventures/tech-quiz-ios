//
//  GithubLoginViewController.swift
//  TechQuiz
//
//  Created by Ivan Bruel on 09/02/15.
//  Copyright (c) 2015 Faber Ventures. All rights reserved.
//

import UIKit
import WebKit
import Snap

class GithubLoginViewController: UIViewController {

    struct Constants {
        static let callbackUrl = "http://faber-ventures.com/github/login"
        static let clientId = "TBD"
        static let clientSecret = "TBD"
    }
    
    var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        /*webView = WKWebView(frame: view.bounds, configuration: WKWebViewConfiguration.))
        view.addSubview(webView)
        webView.snp_makeConstraints { (make) -> () in
            make.edges.equalTo(self.view)
            return
        }*/
    }
    
}
