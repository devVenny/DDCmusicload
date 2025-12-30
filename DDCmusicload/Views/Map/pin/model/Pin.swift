import SwiftUI

struct Pin: Identifiable {
    let id = UUID()
    let latitude: CGFloat
    let longitude: CGFloat
    let title: String
}
