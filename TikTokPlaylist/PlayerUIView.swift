//
//  PlayerUIView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/22/24.
//

import UIKit
import AVKit

class PlayerUIView: UIView{
    let playerLayer = AVPlayerLayer()
    let name: String
    

    required init(tikTokName: String){
        name = tikTokName
        super.init(frame: CGRect.zero)
        
        
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: name, ofType: "mov")!)
        let player = AVPlayer(url: url)
        player.play()
        
        playerLayer.player = player
        layer.addSublayer(playerLayer)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
      }
}
