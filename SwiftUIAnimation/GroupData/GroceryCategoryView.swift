//
//  GroceryCategoryView.swift
//  SwiftUIAnimation
//
//  Created by Ankit Sharma on 14/09/23.
//

import SwiftUI

struct GroceryCategoryView: View {
    
    let lists = GroceryCategory.all()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(lists, id: \.category) { list in
                    Section(header: Text(list.category).font(.title3)) {
                        ForEach(list.items, id: \.name) { item in
                            VStack(alignment: .leading) {
                                NavigationLink {
                                    GroceryCategoryDetailView(navTitle: list.category, item: item)
                                        .toolbarRole(.editor) //this is for removing backbutton title in detail view
                                } label: {
                                    Text(item.name)
                                        .font(.body)
                                        .foregroundColor(.green)
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Grocery List")
        }
    }
}

struct GroceryCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryCategoryView()
    }
}
