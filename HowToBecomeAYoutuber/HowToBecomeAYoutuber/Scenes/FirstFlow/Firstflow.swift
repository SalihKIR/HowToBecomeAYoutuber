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
    @IBOutlet weak var shareButton: UIButton!
    
    
    var viewModel = FirstFlowVM()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.getLessonData()
        viewBackGround.backgroundColor = UIColor(patternImage: UIImage(named: "youtube.jpeg")!)
        navigationItem.title = "YOUTuber"
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        settingsView()
        
    }
    
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
        AppRouter.shared.showFinallyLessonPage(self.navigationController, data: viewModel.data)
       
    }
    @IBAction func rondomButton(_ sender: Any) {
        guard let data = viewModel.data.randomElement() else {return}
        AppRouter.shared.showRandomPage(self.navigationController, data: data)
    }
    @IBAction func shareButton(_ sender: Any) {
        // text to share
        let text = "Uygulamayı Paylaşmaya Nedersin. Berfinsssss"
               // set up activity view controller
               let textToShare = [ text ]
               let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
               activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

               // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToTwitter ]

               // present the view controller
               self.present(activityViewController, animated: true, completion: nil)
    }
    @IBAction func appAboutButton(_ sender: Any) {
    }
    @IBAction func developerButton(_ sender: Any) {
        //        let develop = DeveloperVC.instantiate(storyboard: .developer)
        //        navigationController?.pushViewController(develop, animated: true)
                AppRouter.shared.showDeveloperPage(self.navigationController)
    }
    
    
}

