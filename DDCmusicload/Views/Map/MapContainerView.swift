import SwiftUI

struct MapContainerView: View {
    @State private var selectedPinID: UUID?
    
    let pins: [Pin] = [
        Pin(latitude: 50, longitude: 50, title: "a"),
        Pin(latitude: 70, longitude: 70, title: "b"),
        Pin(latitude: 10, longitude: 40, title: "c"),
        Pin(latitude: 700, longitude: 50, title: "d"),
        Pin(latitude: 150, longitude: 30, title: "e"),
        Pin(latitude: 700, longitude: 200, title: "f"),
        Pin(latitude: 70, longitude: 130, title: "g"),
        Pin(latitude: 300, longitude: 250, title: "h"),
        Pin(latitude: 500, longitude: 450, title: "i"),
    ]
    
    var body: some View {
        ZStack {
            Rectangle()
                .stroke(Color.black.opacity(0.4), lineWidth: 1)
                .background(Color.clear)
            
            ForEach(pins) {
                pin in
                PinView(pin: pin, selectedPinID: $selectedPinID)
                    .position(x: pin.latitude, y: pin.longitude)
            }
        }
    }
}
