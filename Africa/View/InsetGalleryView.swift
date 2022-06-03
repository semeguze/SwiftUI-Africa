//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Sebastian Mesa on 31/05/22.
//

import SwiftUI

struct InsetGalleryView: View {
  // MARK: - PROPERTIES
  let animal: Animal
  
  // MARK: - BODY
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false){
      HStack(alignment: .center, spacing: 15) {
        ForEach(animal.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
          .cornerRadius(12)
        }
      }
    }
  }
}

// MARK: - PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    InsetGalleryView(animal: animals[3])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
