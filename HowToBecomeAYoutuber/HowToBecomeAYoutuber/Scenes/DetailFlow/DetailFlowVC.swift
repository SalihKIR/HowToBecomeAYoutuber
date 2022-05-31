//
//  DetailFlow.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//
import UIKit
public var deneme = "something"

class DetailFlowVC: UIViewController {
    
    @IBOutlet weak var tableViewYoutube: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewYoutube.delegate = self
        
        tableViewYoutube.dataSource = self
        tableViewYoutube.register(DetailFlowCell.nibName, forCellReuseIdentifier: DetailFlowCell.identifier)
    }
    
    
    func donebutton(){
        //let vcc = FirstFlowVC.instantiate(storyboard: .main)
        let testUIbarbutton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(clickButton))
        self.navigationItem.rightBarButtonItem  = testUIbarbutton
        
    }
   
           //let testUIBarButtonItem = UIBarButtonItem(image: UIImage(named: "test.png"), style: .plain, target: self, action: #selector(self.clickButton))
          
       
      @objc func clickButton(){
          print("button click")
          navigationItem.setLeftBarButton(UIBarButtonItem(barButtonSystemItem: .done, target: self, action: nil), animated: true)
          navigationController?.setNavigationBarHidden(true, animated: true)
          navigationController?.popViewController(animated: true)
        }
    
}

extension DetailFlowVC: UITableViewDelegate , UITableViewDataSource  {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.layer.cornerRadius = 10
        let youtubecell = tableViewYoutube.dequeueReusableCell(withIdentifier: DetailFlowCell.identifier, for: indexPath) as! DetailFlowCell
        return youtubecell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let explanation = ExplanationFlowVc.instantiate(storyboard: .explanation)
        
        navigationController?.pushViewController(explanation, animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
   
    
    
    
    
}



//extension DetailFlowVC: StoryboardInstantiate {
//    static var storyboardType: StoryboardType { return .DetailFlow }
//}
