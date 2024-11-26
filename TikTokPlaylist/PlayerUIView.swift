//
//  PlayerUIView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/22/24.
//

import UIKit
import AVKit
import AVFoundation

class PlayerUIView: UIView{
    let playerLayer = AVPlayerLayer()
    

    init(player: AVPlayer){
        super.init(frame: CGRect.zero)
       
        playerSetup(player: player)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    private func playerSetup(player: AVPlayer) {
            playerLayer.player = player
            player.actionAtItemEnd = .none
            layer.addSublayer(playerLayer)
            
            self.setObserver()
            player.play()
        
    }
        
        func setObserver() {
            NotificationCenter.default.removeObserver(self)
            NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd(notification:)), name: .AVPlayerItemDidPlayToEndTime, object: playerLayer.player?.currentItem)
        }
        
        @objc func playerItemDidReachEnd(notification: Notification) {
            if let playerItem = notification.object as? AVPlayerItem {
                playerItem.seek(to: .zero, completionHandler: nil)
                self.playerLayer.player?.play()
            }
        }
}
