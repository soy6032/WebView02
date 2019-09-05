//
//  ViewController.swift
//  WebView
//
//  Created by D7702_10 on 2019. 9. 5..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet weak var Webview: WKWebView!
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchBar.delegate = self
        
        let request = URLRequest(url: URL(string: "http://www.naver.com")!)
        
        Webview.load(request)
        
    }

    @IBAction func backAction(_ sender: Any) {
        if self.Webview.canGoBack{
            self.Webview.goBack()
        }
    }
    
    @IBAction func forwardAction(_ sender: Any) {
        if self.Webview.canGoForward{
            self.Webview.goForward()
        }
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let inputURL = searchBar.text!
        let request = URLRequest(url: URL(string: inputURL)!)
        Webview.load(request)
        self.view.endEditing(true)
    }
}

