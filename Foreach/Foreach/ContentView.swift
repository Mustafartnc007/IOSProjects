//
//  ContentView.swift
//  Foreach
//
//  Created by Mustafa Ertunç on 26.04.2025.
//

import SwiftUI

struct Book: Identifiable {
    let id: UUID = UUID()
    let title: String
    let author: String
    let pages: Int
    var bookType: String
    
    init(title: String, author: String, pages: Int, bookType: String) {
        self.title = title
        self.author = author
        self.pages = pages
        self.bookType = bookType
    }
 }

    



struct ContentView: View {
    
    let books = [
        Book(title: "1984", author: "George Orwell", pages: 328, bookType: "ScienceFiction"),
        Book(title: "Harry Potter ve Dövüşü", author: "J.K. Rowling", pages: 384, bookType: "Fantasy"),
        Book(title: "Sözlük", author: "Büyük Adem", pages: 1000, bookType: "NonFiction"),
        Book(title: "Quran", author: "Muhammed", pages: 660, bookType: "Fantasy"),
        Book(title: "Kızımızda Bulunanlar", author: "Büyük Adem", pages: 1000, bookType: "NonFiction"),
        Book(title: "Nutuk", author:"Mustafa Kemal Atatürk" , pages: 800, bookType: "Article")
    ]
    
    var body: some View {
      
        Text("KİTAP LİSTESİ")
            .font(.title)
            .fontWeight(.bold)
            List{
                
                ForEach(books) { book in
                    VStack{
                        Text(book.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            
                            
                        HStack{
                            Text(book.author)
                                .frame(width: 150,height: 110)
                                .background(Color.gray)
                            VStack{
                                Text("\(book.pages) sayfa")
                                    .frame(width: 150,height: 50)
                                    .background(Color.yellow)
                                Text(book.bookType)
                                    .frame(width: 150,height: 50)
                                    .background(Color.orange)
                            }
                        }
                    }
                }
                
            }
                                  
        }
            
        
      
    }

#Preview {
    ContentView()
}
