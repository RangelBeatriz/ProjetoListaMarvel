//
//  NetworkFile.swift
//  MarvelAPI
//
//  Created by user191918 on 5/13/21.
//

import Foundation
import Alamofire
import CryptoKit

class SwiftAPI {
    let baseURL = "http://gateway.marvel.com/v1/public/characters"
    let privateKey = "e6fce4477364edd99c05b641b530673dc87f8008"
    let publicKey = "ee6645130f54ce96d6d993660fa2be92"
    let ts = String(Date().timeIntervalSince1970)
    
    public func apiRequest() {
            let parameters = ["ts": ts, "hash": self.getMD5(), "apikey" : publicKey]
            
            let request = AF.request(baseURL, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil, interceptor: nil)
            
            request.response { responseData in
                guard let data = responseData.data else {return}
                
                print(responseData)
                            
                do{
                    let characters = try JSONDecoder().decode(MarvelAPIData.self, from: data)
                    
                    print("data == \(characters)")
                } catch {
                    print("Error decoding == \(error)")
                }
            }
            
        }
    
    private func getMD5() -> String {
        let apiData = ts + privateKey + publicKey
        guard let data = apiData.data(using: .utf8) else {return String()}
        let apiHash = Insecure.MD5.hash(data: data)
        return apiHash.map {String(format: "%02hhx", $0)}.joined()
    }

    
}
