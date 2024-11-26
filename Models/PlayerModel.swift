//
//  PlayerModel.swift
//  TikTokPlaylist
//
//  Created by Bryce King on 11/26/24.
//

import Foundation
import AVKit

struct PlayerModel{
    let playlistVideos = ["bones-jones", "self-torture", "fight-club"]
    var player: AVPlayer
    var index = 0
    var paused = false
    
    init(){
        player =  AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
    }
    
    mutating func TogglePause(){
        self.paused.toggle()
        if paused{
            player.pause()
        }else{
            player.play()
        }
    }
    
    mutating func PreviousVideo(){
        if(index == 0){
            index = playlistVideos.count - 1
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false
        }else{
            index -= 1
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false
        }
        
    }
    
    mutating func NextVideo(){
        if(index == playlistVideos.count - 1){
            index = 0
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false
        }else{
            index += 1
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false
            }
    }
        
}
