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
    let headerString = "<head><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'></head>"

    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        wkpData.navigationDelegate = self
        viewModel.getLessonData()
       
        //wkpData.loadHTMLString(data?.icerik ?? "", baseURL: nil)
        wkpData.loadHTMLString(headerString + data!.icerik, baseURL: nil)
    }

    @IBAction func toorootbutton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
         





