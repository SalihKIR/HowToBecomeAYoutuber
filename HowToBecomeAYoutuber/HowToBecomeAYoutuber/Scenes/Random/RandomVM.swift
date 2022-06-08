//
//  RandomVM.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 8.06.2022.
//
import Foundation

protocol RandomFlowVMProtocol{
    
}

protocol RandomFlowDelegate: RandomFlowVMProtocol{
    var delegate: RandomFlowDelegateOutputs? {get set}
    var data: [Datum] {get set}
    
}

protocol RandomFlowDelegateOutputs: AnyObject{
    
}

class RandomFlowVm: RandomFlowDelegate{
    var data: [Datum] = []
    var delegate: RandomFlowDelegateOutputs?
    let network : LessonApiProtocol = Api()
    let url: String = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"
    func getLessonData(){
        network.getDownloadLesson(url: url) { [weak self] (repo , err) in
            if let repo = repo {
                self?.data = repo.data
            }
        }
    }
}
