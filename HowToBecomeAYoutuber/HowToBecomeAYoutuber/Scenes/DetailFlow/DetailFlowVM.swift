//
//  DetailFlowVM.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 30.05.2022.
//

import Foundation

protocol DetailFlowVMProtocol: AnyObject{
   
}

protocol DetailFlowVMDelegate: DetailFlowVMProtocol{
    var delegate: DetailFlowVmDelegateOutputs? {get set}
    var data: [Datum] {get set}
}

protocol DetailFlowVmDelegateOutputs: AnyObject{
   // func successHeader(_respons: Lesson)
    func reloadTableView()
}

class DetailFlowVM: DetailFlowVMDelegate{
    var data: [Datum] = []
    var delegate: DetailFlowVmDelegateOutputs?
    var network: LessonApiProtocol = Api()
    
    let url: String = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"
    func getLessonData() {
        network.getDownloadLesson(url: url) { [weak self] (repo, err)  in
            if let repo = repo {
                self?.data = repo.data
               
            }
            self?.delegate?.reloadTableView()
        }
        
    }
    
}
