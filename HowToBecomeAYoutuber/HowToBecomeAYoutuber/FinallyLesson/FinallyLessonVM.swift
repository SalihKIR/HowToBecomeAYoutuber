//
//  FinallyLessonVM.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 8.06.2022.
//

import Foundation
protocol FinallyLessonVMProtocol {
    
}

protocol FinallyFlowVMDelegate: FinallyLessonVMProtocol{
    var delegate: FinallyFlowDelegateOutputs? {get set}
    var data: [Datum] {get set}
}

protocol FinallyFlowDelegateOutputs: AnyObject{
    func reloadData()
}

class FinallyFlowVM: FinallyFlowVMDelegate{
    var data: [Datum] = []
    var delegate: FinallyFlowDelegateOutputs?
    var network: LessonApiProtocol = Api()
    let url: String = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"
    func getLessonData() {
        network.getDownloadLesson(url: url) { [weak self] (repo, err)  in
            if let repo = repo {
                self?.data = repo.data
               
            }
            self?.delegate?.reloadData()
    
        }
        
    }
}
