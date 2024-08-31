//
//  MostReadBookView.swift
//  story
//
//  Created by Ramandeep Singh on 31/08/24.
//

import SwiftUI

struct MostReadBookView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(mostReadBooks,id:\.self){ book in
                    NavigationLink {
                        BookDetailView(book: book)
                    } label:{
                        BookCardView(book: book)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    MostReadBookView()
}
