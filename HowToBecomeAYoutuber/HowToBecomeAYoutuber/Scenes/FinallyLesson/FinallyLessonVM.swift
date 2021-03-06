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
}
