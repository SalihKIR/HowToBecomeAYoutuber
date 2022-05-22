//
//  ViewController.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//

import UIKit

class FirstFlowVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func firstbutton(_ sender: Any) {

        //let vc = DetailFlowVC.instantiate()
        let vc = DetailFlowVC.instantiate(storyboard: .detailFlow)
        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

//extension FirstFlowVC: StoryboardInstantiate {
//    static var storyboardType: StoryboardType { return .FirstFlow }
//}
