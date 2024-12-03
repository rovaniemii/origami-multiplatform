import SwiftUI
import Shared

struct ContentView: View {
    @State private var showContent = false
    var body: some View {
        ZStack(alignment: .center){
            VStack{
                Image(systemName: "swift")
                    .resizable()
                    .frame(maxWidth:.infinity)
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading, .trailing], 50)
                
                Text("Hello, World!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
