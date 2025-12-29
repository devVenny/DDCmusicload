import SwiftUI

struct ContentView: View {
    @State private var isStarted = false
    
    var body: some View {
        if isStarted {
            HomeView()
        } else {
            StartView(isStarted : $isStarted)
        }
    }
}

#Preview {
    ContentView()
}
