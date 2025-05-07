//
//  ContentView.swift
//  ScrollView
//
//  Created by Mustafa Ertunç on 29.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        //If we wrap vstack up with scroolview we can do scrolling horizontal or vertical(according to situation)
        //If we wants to hide scrollbar we has to use "showsIndicators: false" code
        ScrollView(showsIndicators: false){
            VStack{
                Rectangle()
                    .fill(.blue)
                    .frame(height: 300)
                Rectangle()
                    .fill(.red)
                    .frame(height: 300)
                Rectangle()
                    .fill(.cyan)
                    .frame(height: 300)
                Rectangle()
                    .fill(.orange)
                    .frame(height: 300)
                Rectangle()
                    .fill(.mint)
                    .frame(height: 300)
            }
        }
       
        
    }
}

#Preview {
    ContentView()
}
