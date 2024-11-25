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
    @State var displayControls = false
    let PlaylistVideos = ["bones-jones", "self-torture", "fight-club"]
    
    var body: some View {
        ZStack{
            PlayerView(tikTokVideo: PlaylistVideos[0])
                .onTapGesture {
                    displayControls = !displayControls
                }
            if displayControls{
                VideoControlsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
