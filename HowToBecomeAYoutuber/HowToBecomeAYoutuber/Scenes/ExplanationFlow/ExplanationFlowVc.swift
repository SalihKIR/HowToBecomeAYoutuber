//
//  ExplanationFlowVc.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//

import UIKit
import WebKit
class ExplanationFlowVc: UIViewController, ExplationFlowDelegateOutputs, WKNavigationDelegate {
  
    @IBOutlet weak var wkpData: WKWebView!
    var viewModel: ExplanationFlowVM!
    var data: Datum?
   
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        wkpData.navigationDelegate = self
        viewModel.getLessonData()
        webView(wkpData)
        wkpData.loadHTMLString(data?.icerik ?? "", baseURL: nil)
    }

    @IBAction func toorootbutton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    func webView(_ webview: WKWebView) {
        let js = "document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust='100%'"//dual size
        webview.evaluateJavaScript(js, completionHandler: nil)
    }

}


extension Data {
    var html2AttributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: self, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            print("error:", error)
            return  nil
        }
    }
    var html2String: String { html2AttributedString?.string ?? "" }
}
extension StringProtocol {
    var html2AttributedString: NSAttributedString? {
        Data(utf8).html2AttributedString
    }
    var html2String: String {
        html2AttributedString?.string ?? ""
    }
}
         





