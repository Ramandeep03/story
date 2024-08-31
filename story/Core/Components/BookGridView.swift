//
//  BookGridView.swift
//  story
//
//  Created by Ramandeep Singh on 30/08/24.
//

import SwiftUI

struct BookGridView: View {
   @Binding var selectedCategory: Tab
    var currentBooks: [Book] {
        if let category = categories.first(where: { $0.name.lowercased() == selectedCategory.rawValue }) {
            return category.books
        } else if selectedCategory == .all {
            var allBooks: [Book] = []
            for category in categories {
                allBooks.append(contentsOf: category.books)
            }
            return allBooks
        }
        return []
    }
    var body: some View {
        ScrollView (showsIndicators: false){
            LazyVGrid(columns: Array(repeating: GridItem(), count: 2)){
                ForEach(currentBooks,id: \.self){ book in
                    NavigationLink {
                        BookDetailView(book: book)
                    } label:{
                        BookCardView(book: book)
                    }
                }
            }
        }

    }
}

#Preview {
   
    BookGridView(selectedCategory: .constant(.all))
}
