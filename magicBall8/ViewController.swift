//
//  ViewController.swift
//  magicBall8
//
//  Created by Kamil Salawa on 15/07/2021.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var ball = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball5")]
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func shakeButton(_ sender: UIButton) {
        playSound()
        imageView.image = ball.randomElement()!
        //print(imageView.image!)
        
        let impactMed = UIImpactFeedbackGenerator(style: .rigid)
            impactMed.impactOccurred()
        
            }
    func playSound() {
        let url = Bundle.main.url(forResource: "sound", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}



