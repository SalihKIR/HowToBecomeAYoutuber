//
//  DetailFlow.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//
import UIKit
class DetailFlowVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func detailbutton(_ sender: Any) {
        let vcc = FirstFlowVC.instantiate(storyboard: .main)
        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.popViewController(animated: true)
    }
    
}
//extension DetailFlowVC: StoryboardInstantiate {
//    static var storyboardType: StoryboardType { return .DetailFlow }
//}
