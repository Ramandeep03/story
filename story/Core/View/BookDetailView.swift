//
//  BookDetailView.swift
//  story
//
//  Created by Ramandeep Singh on 31/08/24.
//

import SwiftUI

struct BookDetailView: View {
    var book: Book
    @State var showStory:Bool = false
    var body: some View {
        ZStack(){
            GeometryReader(content: { geometry in
                Image(book.imageName)
                
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.white.opacity(0.1))
                    .frame(width: geometry.size.width , height:geometry.size.height )
                    .overlay{
                        Color.onAccent
                    }
            })
          
            
            VStack(alignment:.leading, spacing: 24){
                Text(book.title)
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                
                HStack{
                    Text("By \(book.author)")
                    line()
                    Text("Published in year \(book.publishedOn)")
                }
                .foregroundStyle(.secondary)
                
                HStack{
                    VStack(alignment:.leading, spacing: 15){
                        Text("Reads").foregroundStyle(.secondary)
                        Text(book.read).bold()
                    }
                    Spacer()
                    line()
                    Spacer()
                    VStack(alignment:.leading, spacing: 15){
                        Text("Likes").foregroundStyle(.secondary)
                        Text(book.likes).bold()
                    }
                    Spacer()
                    line()
                    Spacer()
                    VStack(alignment:.leading, spacing: 15){
                        Text("Pages").foregroundStyle(.secondary)
                        Text("\(book.pages)").bold()
                    }
                }
                
                Text("About \(book.title)")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                Text(book.description)
                    .foregroundStyle(.secondary)
                    .lineLimit(20)
                
            }
            .padding()
            .padding(.vertical,20)
            .padding(.bottom,60)
            .background(.ultraThinMaterial)
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .bottom)
            .overlay(alignment:.bottom){
                Button{
                    withAnimation{
                        showStory.toggle()
                    }
                }
            label:{
                Text("Start Reading")
                    .bold()
                    .frame(width: 250,height: 50)
                    .background(.white,in: Capsule())
                    .foregroundStyle(.black)
            }
            .padding(.bottom,25)
            }
        }
        .fullScreenCover(isPresented: $showStory, content: {
            ScrollView {
                VStack (alignment: .trailing,spacing: 20){
                    Button{
                        showStory.toggle()
                    }
                label:{
                    Image(systemName: "x.circle")
                        .foregroundColor(.primary)
                        .imageScale(.large)
                }
                    Text(book.story)
                }
                .padding()
            }
        })
        .ignoresSafeArea()

    }
}

#Preview {
    BookDetailView(book: categories[0].books[0])
}


struct line: View{
    var body: some View{
        Rectangle()
            .frame(width: 1,height: 35)
    }
}
