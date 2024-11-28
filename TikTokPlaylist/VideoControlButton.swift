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
            .foregroundColor(Color(#colorLiteral(red: 0.6962038279, green: 0.6962038279, blue: 0.6962037683, alpha: 0.7347630381)))
    }
}
