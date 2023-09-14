//
//  ScaleEffectView.swift
//  SwiftUIAnimation
//
//  Created by Ankit Sharma on 14/09/23.
//

import SwiftUI

struct ScaleEffectView: View {
    @State var showAnimation: Bool = false
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("🐧")
                .font(.custom("Arial", size: 200))
                .scaleEffect(showAnimation ? 2 : 1)
                .rotationEffect(Angle(degrees: showAnimation ? 360.0 : 0.0))
                .animation(.interpolatingSpring(mass: 1, stiffness: 100, damping: 10, initialVelocity: 0), value: showAnimation)
//                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0))

            Spacer()
            Divider()
            Button("Press me") {
                self.showAnimation.toggle()
            }
            .padding()
            .background(.green)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(12)
        }
    }
}

struct ScaleEffectView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffectView()
    }
}
