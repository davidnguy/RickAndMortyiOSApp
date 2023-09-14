//
//  RMRequest.swift
//  Rick and Morty
//
//  Created by David Nguyen on 02.01.23.
//

import Foundation

final class RMRequest {
    //API Constants
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    //Desired endpoint
    let endpoint: RMEndpoint
    
    //Path components for API, if any
    let pathcomponents: [String]
    
    //Query parameters for API, if any
    let queryparameters: [URLQueryItem]
    
    //Contructed url for the api request in String format 
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathcomponents.isEmpty {
            pathcomponents.forEach({
                string += "/\($0)" 
            })
        }
        
        if !queryparameters.isEmpty {
            string += "?"
            let argumentString = queryparameters.compactMap({
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }

    //Construted API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    //Desired http method
    public let httpMethod = "GET"
    
    //MARK: - Public
    init(
        endpoint: RMEndpoint,
        pathcomponents: [String] = [],
        queryparameters: [URLQueryItem] = []
    ){
        self.endpoint = endpoint
        self.pathcomponents = pathcomponents
        self.queryparameters = queryparameters
    }
}

extension RMRequest {
    static let listCharacterRequests = RMRequest(endpoint: .character)
}
