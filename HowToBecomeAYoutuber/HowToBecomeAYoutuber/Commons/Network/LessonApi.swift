//
//  Network.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 24.05.2022.
//

import Foundation


protocol LessonApi {
    func getDownloadLesson(url: String, completion: @escaping (Lesson? , String?) -> Void)
}

extension Api: LessonApi {
    
 
    func getDownloadLesson(url: String, completion: @escaping (Lesson?, String?) -> Void) {
        network.getData(url: url, completion: completion)
        
    }
    
    
}
