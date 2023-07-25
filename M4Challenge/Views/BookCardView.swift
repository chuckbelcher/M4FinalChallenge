//
//  BookCardView.swift
//  M4Challenge
//
//  Created by Chuck Belcher on 7/24/23.
//

import SwiftUI

struct BookCardView: View {
    var book: Book
    var body: some View {
        VStack (alignment: .leading) {
            Image("cover\(book.id)")
                .resizable()
                .scaledToFit()
                .frame(height: 450)
            Text(book.title)
                .font(.title3)

            Text("Author:  \(book.author)")
                .opacity(0.50)
            HStack {
                Text("Rating:  \(book.rating)")
                    .opacity(0.50)
                if book.isFavourite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.blue)
                }
                
            }
        }
        .padding()
        .background(Color(hue: 0.549, saturation: 0.088, brightness: 0.955))
        .cornerRadius(20)
        .bold()
    }
}

struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        let bookModel = BookModel()
        BookCardView(book: bookModel.book[3])
    }
}
