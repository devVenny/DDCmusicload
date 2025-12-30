import SwiftUI

struct PinView: View {
    let pin: Pin
    
    @Binding var selectedPinID: UUID?
    
    var isSelected: Bool {
        selectedPinID == pin.id
    }
    
    var body: some View {
        VStack {
            Circle().fill(Color.red)
                .frame(width: 14, height: 14)
                .onTapGesture {
                    selectedPinID = isSelected ? nil : pin.id
                }
            
            if(isSelected) {
                Text(pin.title)
            }
        }
    }
}
