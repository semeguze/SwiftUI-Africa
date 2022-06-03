//
//  MainView.swift
//  Africa
//
//  Created by Sebastian Mesa on 30/05/22.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    TabView {
      ContentView()
        .tabItem {
          Label("Browse", systemImage: "square.grid.2x2")
        }
      
      VideoListView()
        .tabItem {
          Label("Watch", systemImage: "play.rectangle")
        }
      
      MapView()
        .tabItem {
          Label("Locations", systemImage: "map")
        }
        .edgesIgnoringSafeArea(.top)
      
      GalleryView()
        .tabItem {
          Label("Gallery", systemImage: "photo")
        }
        .edgesIgnoringSafeArea(.top)
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
