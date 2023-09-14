//
//  GroceryCategoryDetailView.swift
//  SwiftUIAnimation
//
//  Created by Ankit Sharma on 14/09/23.
//

import SwiftUI

struct GroceryCategoryDetailView: View {
    
    let navTitle: String
    let item: GroceryCategoryItem
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                HStack {
                    Text("Name: ")
                    Text(item.name)
                        .padding(12)
                        .font(.title)
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                HStack {
                    Text("Price: ")
                    Text(String(format: "%.2f", item.price))
                        .padding(12)
                        .font(.title)
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                Spacer()
            }.padding(40)
        }
        .navigationTitle(navTitle)
        .navigationBarTitleDisplayMode(.inline) //for small title
    }
}

struct GroceryCategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryCategoryDetailView(navTitle: "Fruit", item: .init(name: "Apple", price: 100.0))
    }
}
