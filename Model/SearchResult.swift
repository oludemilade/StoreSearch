//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Oludemilade Raji on 6/9/18.
//  Copyright © 2018 Oludemilade Raji. All rights reserved.
//

import Foundation

class ResultArray:Codable {
    var resultCount = 0
    var results = [SearchResult]()
}

class SearchResult:Codable, CustomStringConvertible {
    var description: String{
        return "Name: \(name), Artist Name: \(artistName)"
    }
    
    var trackName = ""
    var artistName = ""
    
    var name: String{
        return trackName
    }
}
