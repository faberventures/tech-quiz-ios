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
import Alamofire

class GithubLoginViewController: UIViewController, WKNavigationDelegate {
    
    struct Constants {
        static let callbackURL = "http://faber-ventures.com/github/login"
        static let clientId = "88ad38430a2521821652"
        static let clientSecret = "1763df68f0d797e53e0698e45dbdac50c55ee801"
        static let authorizeURL = "https://github.com/login/oauth/authorize"
        static let accessTokenURL = "https://github.com/login/oauth/access_token"
    }
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        requestGithubAuthorization()
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
    
    private func requestGithubAuthorization() {
        let scope = "user"
        let githubAuthorizationURL = "\(Constants.authorizeURL)?client_id=\(Constants.clientId)&redirect_uri=\(Constants.callbackURL)&scope=\(scope)"
        webView.loadRequest(NSURLRequest(URL: NSURL(string: githubAuthorizationURL)!))
    }
    
    private func githubAccessTokenPOST(code: String) {
        Alamofire.request(.POST, Constants.accessTokenURL, parameters: githubAccessTokenJSON(code))
            .responseString { (_, _, string, _) in
                println(string)
        }
    }
    
    private func githubAccessTokenJSON(code: String) -> [String: String]{
        var json: [String: String] = [:];
        json["code"] = code
        json["client_id"] = Constants.clientId
        json["client_secret"] = Constants.clientSecret
        return json
    }
    
    func closeButtonClicked(button: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func webView(webView: WKWebView, didCommitNavigation navigation: WKNavigation!) {
        if let url = webView.URL {
            if url.absoluteString!.hasPrefix(Constants.callbackURL) {
                if let code = url.queryParams()["code"] as? String {
                    githubAccessTokenPOST(code)
                }
            }
        }
        
    }
    
}
