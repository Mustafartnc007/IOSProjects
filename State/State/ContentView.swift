//
//  ContentView.swift
//  State
//
//  Created by Mustafa Ertunç on 2.05.2025.
//

import SwiftUI

//In SwiftUI, @State allows data within a view to be mutable. It is used to store simple values that can change — such as from user interactions — and automatically updates the UI when the value changes.
//@State can only be used inside a view.
//It cannot be directly passed to another view. For that, you use property wrappers like @Binding or ObservableObject.
//When a @State variable changes, SwiftUI automatically refreshes the view.



struct ContentView: View {
    
    @State var healthPoints = 5
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white , .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Text("Health")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(red: 0.7, green: 0.4, blue: 0.0))
                    .padding()
                HStack{
                    ForEach(0..<healthPoints ,id:\.self){_ in
                        Image(systemName:"heart.fill")
                            .foregroundColor(.red)
                            .padding(.vertical)
                    }
                }
                Button {
                    healthPoints -= 1
                    
                } label: {
                    Image("character1")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                Button {
                    healthPoints = 5
                } label: {
                    Text("Refresh")
                        .padding()
                        .padding(.horizontal)
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.orange)
                        )
                }

                if healthPoints == 0 {
                    Text("Game Over")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }
            
                
            }
            .padding()
            
        }
        
    }
        
}

#Preview {
    ContentView()
}
