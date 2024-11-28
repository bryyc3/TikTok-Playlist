//
//  PlayerUIView.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/22/24.
//

import UIKit
import AVKit
import AVFoundation

protocol PlayerUIViewDelegate{
    func replayPlayer()
    func autoPlay()
}

class PlayerUIView: UIView{
    let playerLayer = AVPlayerLayer()
    var playerModel: PlayerModel
    var delegate: PlayerUIViewDelegate?
    
    var count = 3
    init(playerModel: PlayerModel){
        self.playerModel = playerModel
        super.init(frame: CGRect.zero)
        playerSetup(player: playerModel.player)
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
            
            player.play()
        
    }
        
    func setObserver() {
       NotificationCenter.default.removeObserver(self)
       NotificationCenter.default.addObserver(self, selector: #selector(playNextPlayerItem(notification:)), name: .AVPlayerItemDidPlayToEndTime, object: playerLayer.player?.currentItem)
    }//when the video finishes play the next video
    
    func setReplayObserver() {
       NotificationCenter.default.removeObserver(self)
       NotificationCenter.default.addObserver(self, selector: #selector(repeatPlayerItem(notification:)), name: .AVPlayerItemDidPlayToEndTime, object: playerLayer.player?.currentItem)
    }//when the video finishes replay the video
    
   
    @objc func repeatPlayerItem(notification: Notification) {
        if let playerItem = notification.object as? AVPlayerItem {
            playerItem.seek(to: .zero, completionHandler: nil)
            self.playerLayer.player?.play()
            delegate?.replayPlayer()
        }
    }//replay the video
   @objc func playNextPlayerItem(notification: Notification) {
       delegate?.autoPlay()
   }//play next video
}
