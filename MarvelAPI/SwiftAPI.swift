//
//  NetworkFile.swift
//  MarvelAPI
//
//  Created by user191918 on 5/13/21.
//

import Foundation
import Alamofire
import UIKit

class SwiftAPI {
    let baseURL = "http://gateway.marvel.com/v1/public/comics"
    let privateKey = "e6fce4477364edd99c05b641b530673dc87f8008"
    let apiKey = "ee6645130f54ce96d6d993660fa2be92"
    
    
    
    typealias WebServiceResponse = ([[String: Any]]?, Error?) -> Void
    
    func urlRequest (_ url: URL, completion: @escaping WebServiceResponse) {
        AF.request(url).validate().responseJSON {response in
            if let error = response.error {
                completion(nil, error)
            } else if let jsonArray = response.result as? [[String: Any]] {
                completion(jsonArray, nil)
            } else if let jsonDict = response.result as? [String: Any] {
                completion([jsonDict], nil)
            }
        }
    }
    
}
