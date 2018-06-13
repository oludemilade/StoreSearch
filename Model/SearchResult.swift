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
        return "Kind: \(kind), Name: \(name), Artist Name: \(artistName)"
    }
    
    var trackPrice = 0.0
    var currency = ""
    var imageSmall = ""
    var imageLarge = ""
    var storeURL = ""
    var genre = ""
    var trackName = ""
    var artistName = ""
    var kind = ""
    
    enum CodingKeys: String, CodingKey{
        case imageSmall = "artworkUrl60"
        case imageLarge = "artworkUrl100"
        case storeURL = "trackViewUrl"
        case genre = "primaryGenreName"
        case kind, artistName, trackName
        case trackPrice, currency
    }
    var name: String{
        return trackName
    }
}
