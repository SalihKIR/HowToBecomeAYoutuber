//
//  FirstFlowVM.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 1.06.2022.
//

import Foundation


protocol FirstFlowVMProtocol {
    
}

protocol FirstFlowVMDelegate: FirstFlowVMProtocol {
    var delegate: FirstFlowDelegateOutputs? { get set }
    var lesson: Lesson? {get set}
    
}

protocol FirstFlowDelegateOutputs: AnyObject {
    func handleViewModelOutputs(_ viewModelOutputs: FirstFlowOutputs )
}

enum FirstFlowOutputs {
    case succes(Lesson)
    case error
}

class FirstFlowVM: FirstFlowVMDelegate{
    var lesson: Lesson?
    var delegate: FirstFlowDelegateOutputs?
    let network: LessonApiProtocol = Api()
    let url: String = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"
    func getLessonData() {
        network.getDownloadLesson(url: url) { [weak self] (repo, err)  in
            if let repo = repo {
                self?.lesson = repo
                self?.delegate?.handleViewModelOutputs(.succes(repo))
            }
        }
    }
    
    
      private func handleViewModelOutputs(_ type: FirstFlowOutputs) {
          self.delegate?.handleViewModelOutputs(type)
      }
}

