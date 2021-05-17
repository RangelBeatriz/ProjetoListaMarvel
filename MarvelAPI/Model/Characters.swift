//
//  Characters.swift
//  MarvelAPI
//
//  Created by user191918 on 5/15/21.
//

import Foundation

struct ReturnApi: Codable {
    let code: Int
    let data: DataClass
    let etag, status: String
}

// MARK: - DataClass
struct DataClass: Codable {
    let offset, limit, total, count: Int
    let results: [Personagem]
}
// MARK: - Result
struct Personagem: Codable {
   let id: Int
   let name, description: String
   //let thumbnail: Thumbnail
   
   enum CodingKeys: String, CodingKey{
       case id
       case name, description
}
}

//MARK - Thumbnail
   struct Thumbnail: Codable {
        let path: String
        let xtension = "extension"
        enum CodingKeys: String, CodingKey{
            case xtension, path
        }
    }
