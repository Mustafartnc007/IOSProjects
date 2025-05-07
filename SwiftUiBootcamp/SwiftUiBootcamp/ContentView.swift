//
//  ContentView.swift
//  SwiftUiBootcamp
//
//  Created by Mustafa Ertunç on 22.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Insomnia")
                .font(.headline)
                .multilineTextAlignment(TextAlignment.leading)
                .padding(.trailing, 120.0)
            
            Text("Uyku hijyeni, kişinin uyku kalitesini arttırmak amacıyla önerilen davranışlar ve çevresel etmenlerin tümüdür. Hafif ve orta düzey insomnia bozukluğu yaşayan insanlara yardım etmek için 1970'li yılların sonunda ortaya çıkmış bir yöntemdir ancak 2014'ten beri araştırmalar, verilen önerilerin etkili olup olmadığı konusunda yeterli kanıt olmadığı ve daha çok çalışma yapılmaya ihtiyaç duyulduğunu göstermektedir.")
                .multilineTextAlignment(TextAlignment.center)
                .multilineTextAlignment(.leading)
                .padding(45.0)
                .frame(width: 350, height: 400)
            HStack{
                RoundedRectangle(cornerRadius: 20.0)
                    .fill(LinearGradient(colors: [.red,.blue], startPoint: .bottomLeading, endPoint: .topTrailing))
                    .frame(width: 80, height: 80)
                Spacer(minLength: 20)
                Image(systemName:"heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .foregroundStyle(.linearGradient(colors: [.purple,.orange], startPoint: .bottomLeading, endPoint: .topTrailing))
                Spacer(minLength: 20)
                Image("motorcycle1")
                    .resizable()
                    //.clipShape(Ellipse())
                    .frame(width: 80, height: 80)
                Spacer(minLength: 20)
                AsyncImage(url: URL(string:"https://www.pexels.com/photo/concrete-road-between-trees-1563356/"))
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                
                
                
            }
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
