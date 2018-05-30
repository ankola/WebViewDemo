//
//  ViewController.swift
//  WebViewDemo
//
//  Created by agilemac-24 on 12/12/17.
//

import UIKit
import WebKit
import CoreLocation

class ViewController: UIViewController,WKNavigationDelegate,WKUIDelegate
{

    @IBOutlet var objWebView:WKWebView!
    var locationManager:CLLocationManager = CLLocationManager()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        objWebView.navigationDelegate = self
        objWebView.uiDelegate = self
        objWebView.load(URLRequest.init(url: URL.init(string: "https://www.google.com")!))
        
        
        //self.view = objWebView
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

     func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
     {
        print("didStartProvisionalNavigation")
    }
 
     func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
     {
        print("didReceiveServerRedirectForProvisionalNavigation")
    }
    

     func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)
     {
        print("didFailProvisionalNavigation")
    }
     func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!)
     {
        print("didCommit")
    }
     func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
     {
        print("didFinish ")
    }
     func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
     {
        print("didFail navigation")
    }
     func webViewWebContentProcessDidTerminate(_ webView: WKWebView)
     {
        print("webViewWebContentProcessDidTerminate")
    }

}

