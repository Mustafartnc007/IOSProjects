import SwiftUI

struct ContentView: View {
    @State var backgroundColor: Color = .blue

    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            // MyView'i çağırıyoruz ve backgroundColor'ı @Binding ile bağlıyoruz
            MyView(backgroundColor: $backgroundColor)
        }
    }
}

#Preview {
    ContentView()
}
//YES
