//
//  PlayerView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/22/24.
//

import SwiftUI
import AVKit


struct PlayerView: UIViewRepresentable, PlayerUIViewDelegate{
    @Binding var player: PlayerModel

    func makeUIView(context: Context) -> PlayerUIView {
        let playerUiView = PlayerUIView(playerModel: player)
        playerUiView.delegate = self
        return playerUiView
    }
    
    func updateUIView(_ uiView: PlayerUIView, context: UIViewRepresentableContext<PlayerView>) {
        uiView.playerLayer.player = player.player
        
        if player.replayCount > 0 {
            uiView.setReplayObserver()
        }else{
            uiView.setObserver()
        }//set specific observer for when video needs to be replayed
        
    }
    
    func replayPlayer() {
        player.replayCount -= 1
    }//lessen the video replay count by one once it is replayed
    
    func autoPlay() {
        player.NextVideo()
    }
}
