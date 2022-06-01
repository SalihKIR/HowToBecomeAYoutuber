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
    func postData()
}

protocol DetailFlowVmDelegateOutputs: AnyObject{
    func successHeader(_respons: Lesson)
    func reloadTableView()
}

class DetailFlowVCVM: DetailFlowVMProtocol{
      var lessons: Lesson?
      var delegate: DetailFlowVmDelegateOutputs?
      var network: NetworkManager = NetworkManager()

      func getData() {
          //network.getData(url: String , completion: {(response,err) in
      }
    
}
