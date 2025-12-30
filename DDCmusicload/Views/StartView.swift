import SwiftUI

struct StartView: View {
    @Binding var isStarted: Bool

    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .fill(.secondary)
                .overlay {
                    Text("Logo")
                        .foregroundStyle(.white)
                }
                .frame(width: 400, height: 400)

            Text("동두천 음악길")
                .buttonStyle(.bordered)
                .font(.system(size: 50, weight: .regular))
                .padding()
            
            Button("시작하기") {
                isStarted = true
            }
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.white)
            .frame(width: 275, height: 100)
            .font(.system(size: 40, weight: .medium))
            .controlSize(.extraLarge)
            .transition(.opacity)
        }
    }
}
