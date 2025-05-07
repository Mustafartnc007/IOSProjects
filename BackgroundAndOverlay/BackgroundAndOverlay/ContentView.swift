//
//  ContentView.swift
//  BackgroundAndOverlay
//
//  Created by Mustafa Ertunç on 25.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.red)
            .background(
                Circle()
                    .fill(.gray)
                    .frame(width: 200, height: 200)
                    .cornerRadius(CGFloat(20))
                    .shadow(color: .red , radius: 10 , x: 0 , y: 10)
                    .overlay(
                        Rectangle()
                        .fill(.red)
                        .cornerRadius(CGFloat(10))
                        .frame(width: 50, height: 50)
                        .overlay(
                            Text("10")
                                .font(.title)
                                .foregroundColor(.white)
                        ),
                        alignment: .topTrailing
                    )
                       
                        
                    
                
        
                
                        
                    
               
            )
        
    }
}

#Preview {
    ContentView()
}
