//
//  PlayerView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/22/24.
//

import SwiftUI
import AVKit

struct PlayerView: UIViewRepresentable {
    let player: AVPlayer
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }
    func makeUIView(context: Context) -> UIView {
        return PlayerUIView(player: player)
    }
}
