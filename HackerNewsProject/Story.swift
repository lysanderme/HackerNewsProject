//
//  Story.swift
//  HackerNewsProject
//
//  Created by Jamie Carruthers on 13/12/2023.
//

import Foundation

struct Story: Codable {
    var id: Int
    var deleted: Bool
    var type: String
    var by: String
    var time: Date
    var text: String
    var dead: Bool
    var parent: Int
    var poll: Int
    var kids: [Int]
    var url: URL
    var score: Int
    var title: String
    var parts: [Int]
    var descendants: Int

}
