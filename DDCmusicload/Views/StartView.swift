import SwiftUI

struct StartView: View {
    @Binding var isStarted: Bool

    var body: some View {
        VStack(spacing: 20) {
            Text("동두천 음악길")
                .font(.largeTitle)

            Button("시작하기") {
                isStarted = true
            }
        }
    }
}

