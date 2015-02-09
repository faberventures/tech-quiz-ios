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

class GithubLoginViewController: UIViewController, WKNavigationDelegate {

    struct Constants {
        static let callbackUrl = "http://faber-ventures.com/github/login"
        static let clientId = "TBD"
        static let clientSecret = "TBD"
        static let url = "https://github.com/login/oauth/authorize"
    }
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        loadGithubLogin()
    }
    
    private func setupViews() {
        setupWebView()
        setupNavigationBar()
    }
    
    private func setupWebView() {
        let webViewConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: view.bounds, configuration: webViewConfiguration)
        webView.navigationDelegate = self
        view.addSubview(webView)
        webView.snp_makeConstraints { (make) -> () in
            make.edges.equalTo(self.view)
            return
        }
    }
    
    private func setupNavigationBar() {
        let closeButton = UIBarButtonItem(title: "Close", style: .Plain, target: self, action: "closeButtonClicked:")
        navigationItem.leftBarButtonItem = closeButton
    }
    
    private func loadGithubLogin() {
        let scope = "user"
        let githubLoginURL = "\(Constants.url)?client_id=\(Constants.clientId)&redirect_uri=\(Constants.callbackUrl)&scope=\(scope)"
        webView.loadRequest(NSURLRequest(URL: NSURL(string: githubLoginURL)!))
    }
    
    func closeButtonClicked(button: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        println("url: \(webView.URL)")
    }
    
}
