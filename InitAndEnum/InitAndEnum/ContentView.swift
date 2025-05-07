//
//  ContentView.swift
//  InitAndEnum
//
//  Created by Mustafa Ertunç on 26.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Home(homeType: .apartment, squareMeters: 150, price: 45000, rooms: 5, city: "Ankara", hasbalcony: true)
                .frame(width: 180, height: 140)
                .background(Color.indigo)
                .padding(.top)
            Spacer()
            Home(homeType: .villa, squareMeters: 230, price: 155000, rooms: 7, city: "Antalya", hasbalcony: true)
                .frame(width: 180, height: 140)
                .background(Color.yellow)
                .fontWeight(.bold)
            Spacer()
            Home(homeType: .apartment, squareMeters: 70, price: 33000, rooms: 2, city: "İstanbul", hasbalcony: true)
                .frame(width: 180, height: 140)
                .background(Color.orange)
            Spacer()
            Home(homeType: .house, squareMeters: 180, price: 76000, rooms: 8, city: "Eskişehir", hasbalcony: true)
                .frame(width: 180, height: 140)
                .background(Color.pink)
                .padding(.bottom)
        }
        .frame(minWidth: 400, alignment: .leading)
        .padding(.leading, 30)
        
        
    }
}




struct Home: View{
    
    
    var homeType: HomeType
    var squareMeters: Int
    var price: Double
    var rooms: Int
    var city: String
    var hasbalcony: Bool
    
    //consturactor method for parameters which I defined
    init (homeType: HomeType, squareMeters: Int, price: Double, rooms: Int, city: String, hasbalcony: Bool) {
        self.homeType = homeType
        self.squareMeters = squareMeters
        self.price = price
        self.rooms = rooms
        self.city = city
        self.hasbalcony = hasbalcony
        }
    var body: some View {
              VStack{
                 
                  if homeType == .apartment {
                      Text("Apartman dairesi")
                  }else if homeType == .house {
                          Text("Ev")
                      }else if homeType == .villa {
                          Text("Villa")
                      }
                  
                  Text("m2: \(squareMeters)")
                  Text("Fiyat: \(price)")
                  Text("Oda Sayısı: \(rooms)")
                  Text("Şehir: \(city)")
                  
                  if hasbalcony == true{
                      Text("Balkonlu")
                  }else{
                      Text("Balkonsuz")
                  }
                  
                  
                  }
                  
              }
    }


enum HomeType{
    case apartment
    case house
    case villa
}






#Preview {
    ContentView()
}
