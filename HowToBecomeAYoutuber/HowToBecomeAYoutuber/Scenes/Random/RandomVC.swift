//
//  RandomVC.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 8.06.2022.
//

import Foundation
import UIKit
import WebKit
class RandomVC: UIViewController , WKNavigationDelegate{
    @IBOutlet weak var webViewKit: WKWebView!
    var viewmodel: RandomFlowVm!
    var data: Datum?
    let headerString = "<head><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'></head>"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webViewKit.loadHTMLString(headerString + data!.icerik, baseURL: nil)
        
    }
    
}
