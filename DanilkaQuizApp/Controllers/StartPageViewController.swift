//
//  StartPageViewController.swift
//  CoreAnimationApp
//
//  Created by Виталий Субботин on 31.01.2019.
//  Copyright © 2019 Виталий Субботин. All rights reserved.
//

import UIKit

class StartPageViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5, execute: {
            
            let alert = UIAlertController(title: "Анастасия!", message: "Поздравляем Вас с Международным Женским Днем! Наш сервис с каждым днем совершенствуется и развивается. Наши специалисты не сидят сложа руки и работают над усовершенствованием работы приложения каждый день! Поэтому для наилучшей оптимизации и интеграции аккаунтов наших пользователей, а другими словами - для Вашего удобства мы подготовили небольшой опрос, который отнимет у Вас не более пары минут! ", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "НАЧАТЬ!", style: .cancel) {(action) in
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5, execute: {
                    
                    self.performSegue(withIdentifier: "segue", sender: self)
                    
                })
            }
            
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
