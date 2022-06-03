//
//  VideoModel.swift
//  Africa
//
//  Created by Sebastian Mesa on 31/05/22.
//

import SwiftUI

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed property
  var thumbnail: String {
    "video-\(id)"
  }
}
