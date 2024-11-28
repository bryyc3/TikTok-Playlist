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
    var index = 0 //playlist index 
    var paused = false
    var replayCount = 0
    
    init(){
        player =  AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
    }//create player object that can be changed when calling video control functions
    
    mutating func TogglePause(){
        self.paused.toggle()
        if paused{
            player.pause()
        }else{
            player.play()
        }
    }//pause/play video
    
    mutating func PreviousVideo(){
        if(index == 0){
            replayCount = 0
            index = playlistVideos.count - 1
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false//go to end of playlist if at the begging
        }else{
            replayCount = 0
            index -= 1
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false
        }
        
    }//go to the previous video in playlist
    
    mutating func NextVideo(){
        if(index == playlistVideos.count - 1){
            replayCount = 0
            index = 0
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false//go to start of playlist if already at the end
        }else{
            replayCount = 0
            index += 1
            if !paused{
                paused = true
                player.pause()
            }
            player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: playlistVideos[index], ofType: "mov")!))
            player.play()
            paused = false
            }
        }//go to next video in playlist
        
    mutating func ReplayVideo(){
        replayCount += 1
    }//increase the amount of times video will be replayed
    
}
