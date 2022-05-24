//
//  ViewController.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//

import UIKit

class FirstFlowVC: UIViewController {
    
    @IBOutlet weak var trybutton: UIButton!
    @IBOutlet weak var viewBackGround: UIView!
    @IBOutlet weak var viewfirst: UIView!
    @IBOutlet weak var viewsecond: UIView!
    @IBOutlet weak var viewthird: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBackGround.backgroundColor = UIColor(patternImage: UIImage(named: "iphonewalpage")!)
        viewfirst.layer.cornerRadius = 20
        viewsecond.layer.cornerRadius = 20
        viewthird.layer.cornerRadius = 20
        trybutton.layer.cornerRadius = 20
        
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
