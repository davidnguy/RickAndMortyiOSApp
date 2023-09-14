//
//  RMGetCharactersResponse.swift
//  Rick and Morty
//
//  Created by David Nguyen on 03.01.23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: info
    let results: [RMCharacter]
    
}
