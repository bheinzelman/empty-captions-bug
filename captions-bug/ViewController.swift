//
//  ViewController.swift
//  captions-bug
//
//  Created by Bert Heinzelman on 7/1/21.
//

import AVFoundation
import AVKit

class ViewController: UIViewController {

    var playerViewController: AVPlayerViewController!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let playerItem = AVPlayerItem(url: URL(string: "https://raw.githubusercontent.com/bheinzelman/empty-captions-bug/master/media/playlist.m3u8")!)
        let player = AVPlayer(playerItem: playerItem)
        playerViewController = AVPlayerViewController()
        playerViewController.player = player

        present(playerViewController, animated: true, completion: {
            player.play()
        })
    }
}

