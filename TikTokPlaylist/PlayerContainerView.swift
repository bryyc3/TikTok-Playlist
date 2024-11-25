//
//  PlayerContainerView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/25/24.
//

import SwiftUI
import AVKit

struct PlayerContainerView: View {
    let player: AVPlayer
    @State var displayControls = false
    @State var paused = false
    
    var body: some View {
        ZStack{
            PlayerView(player: player)
                .onTapGesture {
                    displayControls = !displayControls
                }
            if displayControls{
                VideoControlsView(player: player, paused: $paused)
            }
        }
    }
}