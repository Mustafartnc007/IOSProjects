//
//  ContentView.swift
//  LazyGridAndGridItem
//
//  Created by Mustafa Ertunç on 29.04.2025.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        
        GridItem(.flexible() , spacing: 5 , alignment: nil),
        GridItem(.flexible() , spacing: 5 , alignment: nil),
        GridItem(.flexible() , spacing: 5 , alignment: nil),
        GridItem(.flexible() , spacing: 5 , alignment: nil),
        GridItem(.flexible() , spacing: 5 , alignment: nil)
        
    ]
    
    
    var body: some View {
        
        LazyVGrid(columns: columns , alignment: .center , spacing: 5 , pinnedViews: []) {
            
            
                
                ForEach(0..<100, id: \.self) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame( height: 100)
                        .shadow(radius: 10)
                    
                }
            
            
            
        }
    }
}
#Preview {
    ContentView()
}
