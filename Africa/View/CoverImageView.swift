//
//  CoverImageView.swift
//  Africa
//
//  Created by Sebastian Mesa on 30/05/22.
//

import SwiftUI

struct CoverImageView: View {
  // MARK: - PROPERTIES
  let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
  
  // MARK: - BODY
  var body: some View {
    TabView {
      ForEach(coverImages) { item in
        Image(item.name)
          .resizable()
          .scaledToFill()
      }
    }
    .tabViewStyle(PageTabViewStyle())
  }
}

// MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
  static var previews: some View {
    CoverImageView()
      .previewLayout(.fixed(width: 400, height: 300))
  }
}
