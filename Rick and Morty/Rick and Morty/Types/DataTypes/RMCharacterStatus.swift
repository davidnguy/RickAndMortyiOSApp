//
//  RMCharacterStatus.swift
//  Rick and Morty
//
//  Created by David Nguyen on 02.01.23.
//

import Foundation

enum RMCharacterStatus: String, Codable{
    case alive = "Alive"
    case dead = "Dead"
    case unkown = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unkown:
            return "Unknown"
        }
    }
}
