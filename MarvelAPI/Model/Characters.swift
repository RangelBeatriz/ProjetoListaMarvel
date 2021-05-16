//
//  Characters.swift
//  MarvelAPI
//
//  Created by user191918 on 5/15/21.
//

import Foundation

struct MarvelAPIData: Codable {
    var data: CharacterData
}


struct CharacterData: Codable {
    let results: [Character]
}


struct Character: Codable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail

}


struct Thumbnail: Codable {
    let path: String
    let ext: String


    var url: String{
        return path + "." + ext
    }

}

enum CodingKeys: String, CodingKey {
    case path
    case ext = "extension"
}



