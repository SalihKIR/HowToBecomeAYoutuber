//
//  ViewController.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//

import UIKit

class FirstFlowVC: UIViewController, FirstFlowDelegateOutputs {

    @IBOutlet weak var viewBackGround: UIView!
    @IBOutlet weak var viewfirst: UIView!
    @IBOutlet weak var viewsecond: UIView!
    @IBOutlet weak var viewthird: UIView!
    @IBOutlet weak var secondViewFirst: UIView!
    @IBOutlet weak var secondViewSecomd: UIView!
    @IBOutlet weak var secondViewThird: UIView!
    
    
    var viewModel = FirstFlowVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.getLessonData()
       viewBackGround.backgroundColor = UIColor(patternImage: UIImage(named: "youtube.jpeg")!)
        navigationItem.title = "YOU Tuber"
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        settingsView()
        
    }

    //@IBAction func firstbutton(_ sender: Any) {
      //  AppRouter.shared.showDetailPage(self.navigationController)
        //let vc = DetailFlowVC.instantiate()
       // let vc = DetailFlowVC.instantiate(storyboard: .detailFlow)
       // navigationController?.setNavigationBarHidden(true, animated: true)
        //navigationController?.pushViewController(vc, animated: true)
        // trybutton.titleLabel!.text = "Next"
    //}
    
    func settingsView(){
        viewfirst.layer.cornerRadius = 20
        viewsecond.layer.cornerRadius = 20
        viewthird.layer.cornerRadius = 20
       
        secondViewFirst.layer.cornerRadius = 20
        secondViewSecomd.layer.cornerRadius = 20
        secondViewThird.layer.cornerRadius = 20
        
        
        
    }

    @IBAction func lessonsButton(_ sender: Any) {
        AppRouter.shared.showDetailPage(self.navigationController)
    }
    
    @IBAction func finallyButton(_ sender: Any) {

    }
    @IBAction func rondomButton(_ sender: Any) {
        guard let data = viewModel.data.randomElement() else {return}
        AppRouter.shared.showRandomPage(self.navigationController, data: data)
    }
    @IBAction func shareButton(_ sender: Any) {
    }
    @IBAction func appAboutButton(_ sender: Any) {
    }
    @IBAction func developerButton(_ sender: Any) {
        //        let develop = DeveloperVC.instantiate(storyboard: .developer)
        //        navigationController?.pushViewController(develop, animated: true)
                AppRouter.shared.showDeveloperPage(self.navigationController)
    }
    
    
}

