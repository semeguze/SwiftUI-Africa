//
//  GalleryView.swift
//  Africa
//
//  Created by Sebastian Mesa on 30/05/22.
//

import SwiftUI

struct GalleryView: View {
  // MARK: - PROPERTIES
  @State private var selectedAnimal: String = "lion"
  let animals: [Animal] = Bundle.main.decode("animals.json")
  let haptics = UIImpactFeedbackGenerator(style: .medium)
  
  // Simple Grid definition
  //  let gridLayout: [GridItem] = [
  //    GridItem(.flexible()),
  //    GridItem(.flexible()),
  //    GridItem(.flexible())
  //  ]
  
  // Eficcient Grid definition
  //  let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
  
  // Dinamyc grid layout
  @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
  @State private var gridColum: Double = 3.0
  
  func gridSwitch() {
    gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColum))
  }
  
  // MARK: - BODY
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 30) {
        Image(selectedAnimal)
          .resizable()
          .scaledToFit()
          .clipShape(Circle())
          .overlay(Circle().stroke(.white, lineWidth: 8))
        
        Slider(value: $gridColum, in: 2...4, step: 1)
          .padding(.horizontal)
          .onChange(of: gridColum, perform: { value in
            gridSwitch()
          })
        
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
          ForEach(animals) { item in
            Image(item.image)
              .resizable()
              .scaledToFit()
              .clipShape(Circle())
              .overlay(Circle().stroke(.white, lineWidth: 1))
              .onTapGesture {
                selectedAnimal = item.image
                haptics.impactOccurred()
              }
          }
        }
        .animation(.easeIn)
        .onAppear(perform: {
          gridSwitch()
        })
      }
      .padding(.horizontal, 10)
      .padding(.vertical, 50)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(MotionAnimationView())
  }
}

// MARK: - PREVIEWS
struct GalleryView_Previews: PreviewProvider {
  static var previews: some View {
    GalleryView()
  }
}
