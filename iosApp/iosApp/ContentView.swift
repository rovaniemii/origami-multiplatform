import Shared
import SwiftUI

struct ContentView: View {
    @State private var isSplashVisible = true
    var body: some View {
        if isSplashVisible {
            SplashView()
                .onAppear {
                    // 스플래시 진입 후 1초 뒤 메인화면으로 이동
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                        withAnimation {
                            isSplashVisible = false
                        }
                    }
                    
                }
        } else {
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
