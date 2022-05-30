//
//  NetworkManager.swift
//  HowToBecomeAYoutuber
//
//  Created by Salih KIR on 24.05.2022.
////"https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"

import Foundation
import UIKit


let network = NetworkManager()

final class NetworkManager{
    
    init() { }
    
    func getData<T: Codable>(url: String, completion: @escaping (T?, String?) -> Void) {
            let preparedURL = URL(string: url)
            let task = URLSession.shared.dataTask(with: preparedURL!) { (data, res, error) in
                DispatchQueue.main.async {
                    if let data = data {
                        do {
                            let responseObject = try JSONDecoder().decode(T.self, from: data)
                            completion(responseObject, nil)
                        }catch{
                            print("Data Boş", error, error.localizedDescription)
                        }
                    }
                }
            }
            task.resume()
        }
        
        func postData<T: Codable, K: Encodable>(url: String, params: K, completion: @escaping (T?) -> Void) {
            
        }

}
