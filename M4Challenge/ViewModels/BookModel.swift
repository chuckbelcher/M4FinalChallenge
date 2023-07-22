//
//  BookModel.swift
//  M4Challenge
//
//  Created by Chuck Belcher on 7/21/23.
//

import Foundation

class BookModel: ObservableObject {
    @Published var book = [Book]()
    
    init() {
        //Create an instance of the data service
        book.self = DataService.getLocalData()
    }
}
