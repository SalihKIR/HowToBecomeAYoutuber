//
//  Network.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 24.05.2022.
//

import Foundation


protocol LessonApiProtocol {
    func getDownloadLesson(url: String, completion: @escaping (Lesson? , String?) -> Void)
    

}

extension Api: LessonApiProtocol {
    
 
    func getDownloadLesson(url: String, completion: @escaping (Lesson?, String?) -> Void) {
        network.getData(url: url, completion: completion)
        
    }
  
    
}
