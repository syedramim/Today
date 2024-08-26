//
//  Day.swift
//  Today
//
//  Created by Kaneis Zontanos on 8/26/24.
//

import Foundation

struct Day: Codable, Identifiable {
    let id = UUID().uuidString
    
    var selected: [Info]
    var births: [Info]
    var deaths: [Info]
    var events: [Info]
    var holidays: [Info]
    
}

struct Info: Codable {
    var text: String
    var pages: [Page]
    var year: Int?
}

struct Page: Codable {
    var originalimage: ImageInfo
    var content_urls: Credit
    var description: String
    var extract: String
    
}

struct ImageInfo: Codable {
    var source: String
    var width: Int
    var height: Int
}

struct Credit: Codable {
    var page: String
}
