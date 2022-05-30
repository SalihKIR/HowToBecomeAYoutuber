//
//  NetworkManager.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 24.05.2022.
//

import Foundation
import UIKit

class NetworkManager{

    static let upComing = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"

    func getUpcoming( completion: @escaping (Lesson?)->()){
        let reponse = URLSession.shared
        let task = reponse.dataTask(with: upComing!) { data, response, error in
            guard let lessons = response.value else{
                completion(nil)
                print(response.error)
                return
            }
            completion(lessons)
        }
        
       
    }
}
