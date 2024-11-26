//
//  ContentView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/18/24.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = PlayerModel()
    
    
    var body: some View {
        PlayerContainerView(player: $player)
    }
}

#Preview {
    ContentView()
}
