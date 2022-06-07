//
//  ExplanationFlowVc.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 19.05.2022.
//

import UIKit
class ExplanationFlowVc: UIViewController, ExplationFlowDelegateOutputs {
    func handleViewModelOutputs(_ viewModelOutputs: ExpalationFlowOutputs) {
        <#code#>
    }
    
 
    
    var viewModel: ExplanationFlowVM!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.getLessonData()
        
    }
    
    
    @IBAction func toorootbutton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
   
         





