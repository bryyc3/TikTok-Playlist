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
            VStack{
                Button{
                    player.ReplayVideo()
                } label: {
                    VideoControlButton(button: "repeat", size: 40.0)
                }
                if player.replayCount > 0{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 5.0, height: 5.0)
                        .foregroundColor(Color(#colorLiteral(red: 0.6962038279, green: 0.6962038279, blue: 0.6962037683, alpha: 0.7347630381)))
                    Text("\(player.replayCount)")
                        .foregroundColor(Color(#colorLiteral(red: 0.6962038279, green: 0.6962038279, blue: 0.6962037683, alpha: 0.7347630381)))
                }
            }
            
        }
    }
}

