//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Sebastian Mesa on 1/06/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
  // MARK: - PROPERTIES
  var videoSelected: String
  var videoTitle: String
  
  // MARK: - BODY
  var body: some View {
    VStack {
      VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
      }
      .overlay(
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32)
          .padding(.top, 8)
          .padding(.horizontal, 8)
        , alignment: .topLeading
      )
    }
    .navigationTitle(videoTitle)
    .navigationBarTitleDisplayMode(.inline)
  }
}

// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
  static let videos: [Video] = Bundle.main.decode("videos.json")
  
  static var previews: some View {
    NavigationView {
      VideoPlayerView(videoSelected: videos[0].id, videoTitle: videos[0].headline)
    }
  }
}
