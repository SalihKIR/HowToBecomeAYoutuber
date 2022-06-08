//
//  ExplanationFlowVc.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//

import UIKit
import WebKit
class ExplanationFlowVc: UIViewController, ExplationFlowDelegateOutputs {
    
    var font = "Avenir Next"
    let html = """
    <style>
    body {
        font-family: 'FONTFAMILY';
        font-size: 40pt;
    }
    </style>
    <body>
    This is a test string to demonstrate the characters of a custom installed font named “<b>FONTFAMILY</b>”. Hopefully it will not be replaced by Times New Roman or some other ugly looking font.
    </body>
    """
  
    @IBOutlet weak var wkpData: WKWebView!
    var viewModel: ExplanationFlowVM!
    var data: Datum?
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.getLessonData()
        wkpData.loadHTMLString(data?.icerik ?? "", baseURL: nil)
    }
    self.wkpData.loadHTMLString("<html><body><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0,Proxima Nova-Regular\">\(content)</body></html>", baseURL: nil)
//    fileprivate func loadHTML() {
//        wkpData.loadHTMLString(html.replacingOccurrences(of: "FONTFAMILY", with: font), baseURL: nil)
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font : UIFont(name: font, size: 24)!]
//    }

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
         





