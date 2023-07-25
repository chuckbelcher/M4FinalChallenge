//
//  BookPageView.swift
//  M4Challenge
//
//  Created by Chuck Belcher on 7/24/23.
//

import SwiftUI

struct BookPageView: View {
    var title: String
    var content: [String]
    var pageNumber: Int
    
    @State var tabSelectionIndex = 0
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
            
            TabView (selection: $tabSelectionIndex) {
                
                ForEach (0..<content.count, id:\.self) {index in
                    VStack {
                        Text(content[index])
                            .padding([.bottom, .leading, .trailing])
                        Text("Page: \(index + 1)")
                    }
                    .tag(index)
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle((PageIndexViewStyle(backgroundDisplayMode: .never)))

        }
    }
}

struct BookPageView_Previews: PreviewProvider {
    static var previews: some View {
        let bookModel = BookModel()
        BookPageView(title: bookModel.book[0].title, content: bookModel.book[0].content, pageNumber: bookModel.book[0].currentPage)
    }
}
