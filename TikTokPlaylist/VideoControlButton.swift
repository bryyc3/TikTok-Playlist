//
//  VideoControlButton.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/25/24.
//

import SwiftUI

struct VideoControlButton: View{
    let button: String
    let size: CGFloat
    
    var body: some View{
        Image(systemName: "\(button)")
            .resizable()
            .frame(width: size, height: size)
    }
}
