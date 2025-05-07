//
//  ContentView.swift
//  Button
//
//  Created by Mustafa Ertunç on 2.05.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isToggled = false
    
    var body: some View {
        VStack {
          
            //Basic Button
            Button("Button L1"){
                print("Hello Everyone")
            }
            .padding()
            
            //Designed Button
            Button {
                print("Hello Everyone")
            } label: {
                Text("Button L2")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.headline)
            }
            .padding()
            
            //Stroked Button
            Button {
                print("Hello Everyone")
            } label: {
                Text("Button L3")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 3)
                    )
                    .font(.headline)
            }
            .padding()
            
            //Button with icon
            Button {
                print("Hello Everyone")
            } label: {
                HStack{
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .font(.headline)
                    Text("Button L4")
                        .foregroundColor(.red)
                        .font(.headline)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.red, style: StrokeStyle(lineWidth: 3, lineCap: .round))
                )
            }
            .padding()
            
            //Button Tooggle
            Toggle(isOn: $isToggled){
                Text("Toggle L5")
                    .font(.headline)
            }
            .padding()
            //Button Menu
            Menu {
                Button("Option 1"){
                    //action1
                }
                Button("Option 2"){
                    //action2
                }
                Button("Option 3"){
                    //action3
                }
                Button("Option 4"){
                    //action4
                }
            } label: {
                Text("Menu L6")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.green)
                    )
            }

            }
        .padding()
    }
}

#Preview {
    ContentView()
}
