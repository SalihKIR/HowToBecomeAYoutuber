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
    var lessons: Lesson? {get set}
    func getData()
}

protocol DetailFlowVmDelegateOutputs: AnyObject{
    func successHeader(_respons: Lesson)
    func reloadTableView()
}

//x
