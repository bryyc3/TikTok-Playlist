//
//  VideoControlsView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/24/24.
//

import SwiftUI
import AVKit

struct VideoControlsView: View {
    let player: AVPlayer
    @Binding var paused: Bool
    
    var body: some View {
        HStack(spacing: 20){
            
            Button{
                print("Play")
            } label: {
                VideoControlButton(button: "backward.fill", size: 40.0)
            }
            Button{
                paused = !paused
                if paused{
                    player.pause()
                }else{
                    player.play()
                }
            } label: {
                VideoControlButton(button: paused ? "play.fill" : "pause.fill", size: 40.0)
            }
            Button{
                print("Play")
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

