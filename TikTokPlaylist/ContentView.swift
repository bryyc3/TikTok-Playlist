//
//  ContentView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/18/24.
//

import SwiftUI
import AVKit
import AVFoundation

struct ContentView: View {
    @State private var player = AVPlayer()
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear{
                let url = URL(fileURLWithPath: Bundle.main.path(forResource: "self-torture", ofType: "mov")!)
                player = AVPlayer(url : url)
                player.play()
            }
    }
}

#Preview {
    ContentView()
}
