//
//  VideoListView.swift
//  Africa
//
//  Created by Sebastian Mesa on 30/05/22.
//

import SwiftUI

struct VideoListView: View {
  // MARK: - PROPERTIES
  @State private var videos: [Video] = Bundle.main.decode("videos.json")
  let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      List {
        ForEach(videos) { item in
          NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
            VideoListItemView(video: item)
              .padding(.vertical, 8)
          }
        }
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Videos")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            videos.shuffle()
            hapticImpact.impactOccurred()
          }) {
            Image(systemName: "arrow.2.squarepath")
          }
        }
      }
    }
  }
}

// MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
  static var previews: some View {
    VideoListView()
  }
}
