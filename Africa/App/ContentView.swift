//
//  ContentView.swift
//  Africa
//
//  Created by Sebastian Mesa on 30/05/22.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  let animals:[Animal] = Bundle.main.decode("animals.json")
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      List {
        if #available(iOS 15.0, *) {
          CoverImageView()
            .frame(height: 300)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .listRowBackground(Color.clear)
            .padding(.bottom, 20)
            .listRowSeparator(.hidden)
        } else {
          // TODO: complete version for previous iOS versions
        }
        
        ForEach(animals) { amimal in
          NavigationLink(destination: AnimalDetailView(animal: amimal)) {
            AnimalListItemView(animal: amimal)
          }
        }
        .listRowBackground(Color.clear)
        
      }
      .navigationTitle("Africa")
      .navigationBarTitleDisplayMode(.large)
      .listStyle(.plain)
    }
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
