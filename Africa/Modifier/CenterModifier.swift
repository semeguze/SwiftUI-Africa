//
//  CenterModifier.swift
//  Africa
//
//  Created by Sebastian Mesa on 3/06/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
