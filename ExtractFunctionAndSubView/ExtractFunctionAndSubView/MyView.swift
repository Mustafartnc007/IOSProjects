import SwiftUI

//ContentView'imizin body sinde kullanmak için bir view oluşturuyoruz
struct MyView: View {
    
    @Binding var backgroundColor: Color // <-- @Binding kullanarak, dışarıdan rengi yönetiyoruz.

    //button pressed fonksiyonu oluşturup buttonun action kısmında ne yapacağımızı bu fonksiyonda tanımlıyoruz
    func buttonPressed() {
        backgroundColor = .red
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            backgroundColor = .blue
        }
    }
    var body: some View {
        VStack {
            Text("Youtube")
                .font(.title)

            Button(action: {
                //burada buttonPressed() fonksiyonunu çağırıyoruz
                buttonPressed()
            }, label: {
                Text("Click")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .background(.gray)
                    .cornerRadius(10)
            })
        }
    }
}
//YES
