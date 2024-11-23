//
//  PlayerView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/22/24.
//

import SwiftUI

struct PlayerView: UIViewRepresentable {
    let tikTokVideo: String
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }
    func makeUIView(context: Context) -> UIView {
        return PlayerUIView(tikTokName: tikTokVideo)
    }
}
