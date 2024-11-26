//
//  VideoControlsView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/24/24.
//

import SwiftUI
import AVKit

struct VideoControlsView: View {
    @Binding var player: PlayerModel
    
    var body: some View {
        HStack(spacing: 20){
            Button{
                player.PreviousVideo()
            } label: {
                VideoControlButton(button: "backward.fill", size: 40.0)
            }
            
            Button{
                player.TogglePause()
            } label: {
                VideoControlButton(button: player.paused ? "play.fill" : "pause.fill", size: 40.0)
            }
            
            Button{
                player.NextVideo()
            } label: {
                VideoControlButton(button: "forward.fill", size: 40.0)
            }
            
            Button{
                print("Play")
            } label: {
                VideoControlButton(button: "repeat", size: 40.0)
            }
        }
    }
}

