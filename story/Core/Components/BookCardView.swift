//
//  BookCardView.swift
//  story
//
//  Created by Ramandeep Singh on 30/08/24.
//

import SwiftUI

struct BookCardView: View {
    
    var book:Book
    var body: some View {
        Image(book.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: (UIScreen.main.bounds.width / 2) - 20,height: 260)
            .background(.black)
            .clipShape(.rect(cornerRadius: 12))
            .overlay(alignment: .bottom){
                UnevenRoundedRectangle(bottomLeadingRadius: 12,bottomTrailingRadius: 12)
                    .frame(height: 40)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.black,.clear]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                Text(book.title)
                    .lineLimit(1)
                    .bold()
                    .frame(width: 140,alignment: .leading)
                    .foregroundStyle(.white)
            }
            .overlay(alignment: .topTrailing){
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.purple)
                    Text("\(book.rating)")
                        .foregroundStyle(.black)
                }
                .font(.system(size: 11))
                .frame(width: 45,height: 22)
                .background(.white, in: .rect(cornerRadius: 20))
                .padding(12)
            }
    }
}

#Preview {
    BookCardView(book: categories[0].books[0])
}
