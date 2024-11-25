//
//  VideoControlsView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/24/24.
//

import SwiftUI

struct VideoControlsView: View {
    var body: some View {
        HStack{
            Button{
                print("Play")
            } label: {
                Image(systemName: "backward.fill")
            }
            Button{
                print("Play")
            } label: {
                Image(systemName: "play.fill")
            }
            Button{
                print("Play")
            } label: {
                Image(systemName: "forward.fill")
            }
            Button{
                print("Play")
            } label: {
                Image(systemName: "repeat")
            }
        }
    }
}

#Preview {
    VideoControlsView()
}
