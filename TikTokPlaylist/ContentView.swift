//
//  ContentView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/18/24.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    let PlaylistVideos = ["bones-jones", "self-torture", "fight-club"]
    
    var body: some View {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: PlaylistVideos[2], ofType: "mov")!))
        PlayerContainerView(player: player)
    }
}

#Preview {
    ContentView()
}
