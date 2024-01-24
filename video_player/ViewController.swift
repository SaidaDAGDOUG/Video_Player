//
//  ViewController.swift
//  video_player
//
//  Created by Saida Dagdoug on 27/12/2023.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear (_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    private func playVideo(){
        guard let path=Bundle.main.path(forResource: "Bobby McFerrin - Don't Worry Be Happy (Lyrics)", ofType: "mp4")
        else { debugPrint ("Bobby McFerrin - Don't Worry Be Happy (Lyrics).mp4 not found" )
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
                playerController.player=player
                present(playerController, animated: true) {
                    player.play()
                }
            }

}

