//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Ankit Sharma on 14/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        VStack {
            Button("Press me") {
                self.isPressed.toggle()
            }
            NotificationView(showView: $isPressed)
                .offset(x: 0.0, y: isPressed ? -UIScreen.main.bounds.height / 3 : -UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct NotificationView: View {
    
    @Binding var showView: Bool
    
    var body: some View {
        VStack {
            Text("Text")
                .frame(width: UIScreen.main.bounds.width - 10, height: 100)
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(16)
                .padding(12)
        }
    }
    
}



struct NotificationView_Previews: PreviewProvider {
    
    static var previews: some View {
        NotificationView(showView: .constant(false))
    }
    
}
