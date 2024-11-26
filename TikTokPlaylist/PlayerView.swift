//
//  PlayerView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/22/24.
//

import SwiftUI
import AVKit

struct PlayerView: UIViewRepresentable {
    @Binding var player: AVPlayer
    
    func makeUIView(context: Context) -> PlayerUIView {
        return PlayerUIView(player: player)
    }
    func updateUIView(_ uiView: PlayerUIView, context: UIViewRepresentableContext<PlayerView>) {
            uiView.playerLayer.player = player
            
            uiView.setObserver()
        }
}
