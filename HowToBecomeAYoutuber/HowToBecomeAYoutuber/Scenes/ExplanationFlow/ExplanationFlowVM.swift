//
//  ExplanationFlowVM.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 30.05.2022.
//

import Foundation

protocol ExplationFlowVMProtocol{
    
}

protocol ExplationFlowVMDelegate: ExplationFlowVMProtocol{
    var delegate: ExplationFlowDelegateOutputs? {get set}
    //var lesson: Lesson? {get set}
    var data: [Datum] {get set}
}

protocol ExplationFlowDelegateOutputs: AnyObject{
    //func handleViewModelOutputs(_ viewModelOutputs: ExpalationFlowOutputs)
}

//enum ExpalationFlowOutputs{
//    case succes(Lesson)
//    case error
//
//}

class ExplanationFlowVM: ExplationFlowVMDelegate{
    //var lesson: Lesson?
    var data: [Datum] = []
    var delegate: ExplationFlowDelegateOutputs?
    let network: LessonApiProtocol = Api()
    let url: String = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"
    func getLessonData() {
        network.getDownloadLesson(url: url) { [weak self] (repo, err)  in
            if let repo = repo {
                self?.data = repo.data
//                self?.lesson = repo
//                self?.delegate?.handleViewModelOutputs(.succes(repo))
            }
        }
    }
//    private func handleViewModelOutputs(_ type: ExpalationFlowOutputs){
//        self.delegate?.handleViewModelOutputs(type)
//    }
    
}
