//
//  Network.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 24.05.2022.
//

import Foundation


protocol Network {
    func getDownloadLesson(url: String, completion: @escaping (Lesson? , String?) -> Void)
}

extension Api:Network {
    
 
    func getDownloadLesson(url: String, completion: @escaping (Lesson?, String?) -> Void) {
        network.getData(url: url) { [weak self] (response: Lesson?, err: String? ) in
            completion(response,err)
        }
    }
    
    
}
