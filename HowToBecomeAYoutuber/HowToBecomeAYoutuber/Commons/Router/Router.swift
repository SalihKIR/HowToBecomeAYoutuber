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
    
}
