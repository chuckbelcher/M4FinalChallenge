//
//  ContentView.swift
//  M4Challenge
//
//  Created by Chuck Belcher on 7/20/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var bookModel: BookModel
    
    var body: some View {
        List(bookModel.book) { book in
            Text(book.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(BookModel())
    }
}
