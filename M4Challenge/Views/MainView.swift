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
        NavigationView {
            ScrollView {
                ForEach (bookModel.book) { book in
                    NavigationLink {
                        BookPageView(title: book.title, content: book.content, pageNumber: book.currentPage)
                    } label: {
                        BookCardView(book: book)
                            .foregroundColor(.black)
                    }
                    .padding(5)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(BookModel())
    }
}
