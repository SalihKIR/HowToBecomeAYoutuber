//
//  Router.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 24.05.2022.
//

import Foundation


import UIKit

final class AppRouter {
    
    static var shared = AppRouter()
    
    init() {}
    
    func showDetailPage(_ navigationController: UINavigationController?) {
        let vc = DetailFlowVC.instantiate(storyboard: .detailFlow)
        let vm = DetailFlowVM()
        vc.viewModel  = vm 
        navigationController?.pushViewController(vc, animated: true)
    }
    func showExpalationPage(_ navigationController: UINavigationController?, data: Datum) {
        let vc = ExplanationFlowVc.instantiate(storyboard: .explanation)
        let vm = ExplanationFlowVM()
        vc.data = data
        vc.viewModel = vm
        navigationController?.pushViewController(vc, animated: true)
    }
    func showDeveloperPage(_ navigationController: UINavigationController?){
        let vc = DeveloperVC.instantiate(storyboard: .developer)
        navigationController?.pushViewController(vc, animated: true)
    }
    func showRandomPage(_ navigationController: UINavigationController?, data: Datum){
        let vc = RandomVC.instantiate(storyboard: .random)
        let vm = RandomFlowVm()
        vc.viewmodel = vm
        vc.data = data
        navigationController?.pushViewController(vc, animated: true)
        
    }
    func showFinallyLessonPage(_ navigationController: UINavigationController?, data: [Datum]){
        let vc = FinallyLessonVC.instantiate(storyboard: .finallyLesson)
        let vm = FinallyFlowVM()
        vc.viewModel = vm
        vm.data = data.reversed()
        navigationController?.pushViewController(vc, animated: true)
    }
   
    
}
