//
//  BookModel.swift
//  M4Challenge
//
//  Created by Chuck Belcher on 7/20/23.
//

import Foundation


class Book: Identifiable, Decodable {
    var id: Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content: [String]
}
