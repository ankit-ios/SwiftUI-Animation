//
//  CameraView.swift
//  SwiftUIAnimation
//
//  Created by Ankit Sharma on 14/09/23.
//

import SwiftUI

struct CameraView: View {
    
    @State var showImagePicker: Bool = false
    @State var image: Image?
    
    var body: some View {
        VStack {
            Spacer()
            image?.resizable().scaledToFit()
            Spacer()
            Button("Open Camera") {
                self.showImagePicker = true
            }
            .padding(10)
            .background(.green)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .sheet(isPresented: $showImagePicker) {
            PhotoCaptureView(showImagePicker: $showImagePicker, image: $image)
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
