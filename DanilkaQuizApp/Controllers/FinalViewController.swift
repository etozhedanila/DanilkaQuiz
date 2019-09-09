//
//  FinalViewController.swift
//  CoreAnimationApp
//
//  Created by Виталий Субботин on 05/02/2019.
//  Copyright © 2019 Виталий Субботин. All rights reserved.
//

import UIKit
import AVFoundation

class FinalViewController: UIViewController {
    
    
    var points: Double = 0
    
    var audioPlayer = AVAudioPlayer()

    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        }
    }
    
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playMusic()
        
        changeIcon()
        
        configInterface()
    }
    
    func configInterface() {
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)

        
    }
    

    
    //запуск музыки
    func playMusic() {

        
        do {
            if points < 6 {
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "beloe_platie", ofType: "mp3")!))
            }
            if points > 5, points < 11 {
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "nedelimy", ofType: "mp3")!))
            }
            if points > 10, points < 16 {
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "aga", ofType: "mp3")!))
            }
            if points > 15 {
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "moya_vselennaya", ofType: "mp3")!))
            }

        }
            
        catch {
            print(error.localizedDescription)
        }
        
        audioPlayer.setVolume(0.2, fadeDuration: 0)
        
        audioPlayer.play()
    }

    //смена иконки
    func changeIcon() {
        
        guard UIApplication.shared.supportsAlternateIcons else {
            print("changeIcon() error")
            return
        }
        
        UIApplication.shared.setAlternateIconName("loveIcon") { (error) in
            guard let error = error else {
                return
            }
           
            print(error.localizedDescription)
        }
        
        
    }

}
