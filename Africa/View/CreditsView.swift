//
//  CreditsView.swift
//  Africa
//
//  Created by Sebastian Mesa on 3/06/22.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
  Copyright ® Sebastian Mesa
  All rights reserved
  🚀
  """)
      .font(.footnote)
      .multilineTextAlignment(.center)
    }
    .padding()
    .opacity(0.4)
  }
}

struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
