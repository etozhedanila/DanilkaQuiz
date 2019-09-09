//
//  QuestionViewController.swift
//  CoreAnimationApp
//
//  Created by Виталий Субботин on 31.01.2019.
//  Copyright © 2019 Виталий Субботин. All rights reserved.
//

import UIKit
import AVFoundation

@IBDesignable
class QuestionViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.borderWidth = 1
            imageView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            imageView.layer.cornerRadius = 10
            imageView.layer.backgroundColor = #colorLiteral(red: 0.8518275619, green: 0.7200091481, blue: 1, alpha: 1)
            imageView.layer.shadowOffset = CGSize(width: 5, height: 5)
            imageView.layer.shadowOpacity = 0.5
            imageView.layer.shadowRadius = 5
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel! {
        didSet {
            questionLabel.layer.shadowOffset = CGSize(width: 5, height: 5)
            questionLabel.layer.shadowOpacity = 0.5
            questionLabel.layer.shadowRadius = 5
        }
    }
    
    @IBOutlet weak var button1: UIButton! {
        didSet {
            button1.layer.cornerRadius = 10
            
            button1.layer.shadowOffset = CGSize(width: 5, height: 5)
            button1.layer.shadowOpacity = 0.5
            button1.layer.shadowRadius = 5
            button1.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            button1.layer.borderWidth = 1
            button1.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            
            button1.titleLabel?.adjustsFontSizeToFitWidth = true
            button1.titleLabel?.numberOfLines = 2
            button1.titleLabel?.textAlignment = .center
            
        }
    }
    
    @IBOutlet weak var button2: UIButton! {
        didSet {
            button2.layer.cornerRadius = 10
            button2.layer.shadowOffset = CGSize(width: 5, height: 5)
            button2.layer.shadowOpacity = 0.5
            button2.layer.shadowRadius = 5
            button2.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            button2.layer.borderWidth = 1
            button2.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            button2.titleLabel?.adjustsFontSizeToFitWidth = true
            button2.titleLabel?.numberOfLines = 2
            button2.titleLabel?.textAlignment = .center
        }
    }
    
    @IBOutlet weak var button3: UIButton! {
        didSet {
            button3.layer.cornerRadius = 10
            button3.layer.shadowOffset = CGSize(width: 5, height: 5)
            button3.layer.shadowOpacity = 0.5
            button3.layer.shadowRadius = 5
            button3.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            button3.layer.borderWidth = 1
            button3.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            button3.titleLabel?.adjustsFontSizeToFitWidth = true
            button3.titleLabel?.numberOfLines = 2
            button3.titleLabel?.textAlignment = .center
            
        }
    }
    
    @IBOutlet weak var button4: UIButton! {
        didSet {
            button4.layer.cornerRadius = 10
            button4.layer.shadowOffset = CGSize(width: 5, height: 5)
            button4.layer.shadowOpacity = 0.5
            button4.layer.shadowRadius = 5
            button4.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            button4.layer.borderWidth = 1
            button4.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            button4.titleLabel?.adjustsFontSizeToFitWidth = true
            button4.titleLabel?.numberOfLines = 2
            button4.titleLabel?.textAlignment = .center
        }
    }
    
    lazy var buttons: [UIButton] = [button1 , button2, button3, button4]
    
    var audioPlayer : AVAudioPlayer?
    
    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        }
    }
    
    var shapeLayer: CAShapeLayer! {
        didSet {
            shapeLayer.lineWidth = 15
            shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
            shapeLayer.fillColor = nil
            shapeLayer.strokeEnd = 1
            shapeLayer.strokeColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1).cgColor
        }
    }
    
    var overShapeLayer: CAShapeLayer! {
        didSet {
            overShapeLayer.lineWidth = 15
            overShapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
            overShapeLayer.fillColor = nil
            overShapeLayer.strokeEnd = 0
            overShapeLayer.strokeColor = #colorLiteral(red: 0.02985014766, green: 0.21622774, blue: 0.9214544892, alpha: 1).cgColor
        }
    }
    
    var points: Double = 0
    
    var questionNumber: Int = -1
    
    var musicQuestionNumber = 4
    
    let lastMusicQuestionNumber = 15
    
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
        
        configShapeLayer(shapeLayer)
        configShapeLayer(overShapeLayer)
    }
    
    func configShapeLayer(_ shapeLayer: CAShapeLayer) {
        
        shapeLayer.frame = view.bounds
        let path = UIBezierPath()
        path.move(to: CGPoint(x: self.view.frame.width / 2 - 150, y: 50))
        path.addLine(to: CGPoint(x: self.view.frame.width / 2 + 150, y: 50))
        shapeLayer.path = path.cgPath
    }
    
    
    func askToContinue() {
        let alertController = UIAlertController(title: "Спасибо!", message: "Для @danya_prof совсем недавно тоже был предложен данный опрос, на который были даны ответы. Для большего интереса выбранные Вами варианты, совпадающие с ответом @danya_prof будут выделяться зеленым цветом!", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Отлично!", style: .cancel, handler: {(action) in
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: {
                self.updateQuestions()
                self.activateButtons()
            })
        })
        alertController.addAction(alertAction)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    func startMusicGame(answerWasRight flag: Bool) {
        
        if flag == true {
            questionNumber += 1
            overShapeLayer.strokeEnd += shapeStep
            let alertControllet = UIAlertController(title: "ПРАВИЛЬНО!", message: "Вы хорошо разбираетесь в музыкальном вкусе Вашей второй половинки! Теперь давайте проверим ваше сходство на более высоком уровне!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "ВПЕРЕД!", style: .cancel, handler: { (action) in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: {
                    self.updateQuestions()
                    self.activateButtons()
                })
            })
            alertControllet.addAction(alertAction)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                self.present(alertControllet, animated: true, completion: nil)
            }
        }
        else {
            
            let alertControllet = UIAlertController(title: ":(", message: "К сожалению, Вы выбрали неправильный ответ! Давайте проверим насколько схож Ваш музыкальный кругозор с @danya_prof мини-игрой в 'Угадай мелодию!' ", preferredStyle: .alert)     //музыкальный вкус?
            
            let alertAction = UIAlertAction(title: "ВПЕРЕД!", style: .cancel, handler: {(action) in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: {
                    self.updateQuestions()
                    self.activateButtons()
                })
            })
            alertControllet.addAction(alertAction)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                self.present(alertControllet, animated: true, completion: nil)
            }
        }
        
    }
    
    let shapeStep: CGFloat = 1 / CGFloat(questions.count + uselessQuestions.count - 1)
    
    func checkFinish() {
        overShapeLayer.strokeEnd += shapeStep
        if (overShapeLayer.strokeEnd > 1.01) {
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: {
                self.finishGame()
            })
        }
    }
    
    func deactivateButtons() {
        for button in buttons {
            button.isUserInteractionEnabled = false
        }
    }
    
    func activateButtons() {
        for button in buttons {
            button.isUserInteractionEnabled = true
        }
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        print(questionNumber, "  ", overShapeLayer.strokeEnd)
        
        //performSegue(withIdentifier: "finalSegue", sender: self)
        
        
        deactivateButtons()
        
        checkFinish()
        
        if questionNumber > uselessQuestions.count - 1  {
            checkAnswer(sender)
            if questionNumber == uselessQuestions.count + musicQuestionNumber {
                return
            }
        }
        else {
            sender.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            
            //запрос на продолжение после окончания первого блока вопросов
            if questionNumber == uselessQuestions.count - 1 {
                askToContinue()
                return
            }
        }
        
        stopMusic()
   
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: {
            self.updateQuestions()
            self.activateButtons()
        })
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configInterface()
     
        startGame()
    }
    
    func configInterface() {
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        shapeLayer = CAShapeLayer()
        view.layer.addSublayer(shapeLayer)
        
        overShapeLayer = CAShapeLayer()
        view.layer.addSublayer(overShapeLayer)
    }
    
    func startGame() {
        updateQuestions()
    }
    
    func configImage() {
        
        if questionNumber > uselessQuestions.count - 1 {
            
            let tmpQuestionNumber = questionNumber - uselessQuestions.count
            if let imageString = questions[tmpQuestionNumber]["image"] as? String, imageString != "" {
                imageView.image = UIImage.init(imageLiteralResourceName: imageString)
            }
            else {
                imageView.image = #imageLiteral(resourceName: "question")
            }
        }
        else {
            if let imageString = uselessQuestions[questionNumber]["image"] as? String, imageString != "" {
                
                imageView.image = UIImage.init(imageLiteralResourceName: imageString)
            }
            else {
                imageView.image = #imageLiteral(resourceName: "question")
            }
        }
    }
    
    func updateUselessQuestion() {
        questionLabel.text = uselessQuestions[questionNumber]["question"] as? String
        
        configImage()
        
        guard let answers = uselessQuestions[questionNumber]["answers"] as? [String] else {
            print("updateUselessQuestion() error")
            return
        }
        
        for (index, button) in buttons.enumerated() {
            
            
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            button.setTitle(answers[index], for: .normal)
            button.isUserInteractionEnabled = true
        }
    }
    
    
    func updateQuestions() {
        
        questionNumber += 1
        
        guard questionNumber > uselessQuestions.count - 1 else {
            updateUselessQuestion()
            return
        }
        
        let tmpQuestionNumber = questionNumber - uselessQuestions.count
        
        if let musicName = questions[tmpQuestionNumber]["musicName"] as? String {
            playMusic(withName: musicName)
        }
        
        
        
        questionLabel.text = questions[tmpQuestionNumber]["question"] as? String
        
        configImage()
        
        buttons.shuffle()
        
        buttons[0].setTitle(questions[tmpQuestionNumber]["fullCorrectAnswer"] as? String, for: .normal)
        
        if let semiCorrectAnswer = questions[tmpQuestionNumber]["semiCorrectAnswer"] as? String {
            
            buttons[1].setTitle(semiCorrectAnswer, for: .normal)
            
            for (index, button) in buttons.enumerated() {
                
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                
                if index > 1 {
                    
                    guard let uncorrectAnswers = questions[tmpQuestionNumber]["uncorrectAnswers"] as? [String] else {
                        print("updateQuestions() error 1")
                        return
                    }
                    
                    button.setTitle(uncorrectAnswers[index - 2], for: .normal)
                }
            }
        }
        else {
            
            for (index, button) in buttons.enumerated() {
                
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                
                if index > 0 {
                    
                    guard let uncorrectAnswers = questions[tmpQuestionNumber]["uncorrectAnswers"] as? [String] else {
                        print("updateQuestions() error 2")
                        return
                    }
                    
                    button.setTitle(uncorrectAnswers[index - 1], for: .normal)
                }
            }
        }
        
        
    }
    
    func checkAnswer(_ sender: UIButton) {
        let tmpQuestionNumber = questionNumber - uselessQuestions.count
        if (sender.currentTitle == questions[tmpQuestionNumber]["fullCorrectAnswer"] as? String) {
            
            sender.backgroundColor = #colorLiteral(red: 0, green: 0.929577291, blue: 0, alpha: 1)
            points += 1
            if tmpQuestionNumber == musicQuestionNumber {
                startMusicGame(answerWasRight: true)
                musicQuestionNumber += 1

            }
        }
        else {
            if (sender.currentTitle == questions[tmpQuestionNumber]["semiCorrectAnswer"] as? String) {
                
                sender.backgroundColor = #colorLiteral(red: 0.8380474448, green: 0.91834867, blue: 0, alpha: 1)
                points += 0.5
            }
            else {
                sender.backgroundColor = .red
                if tmpQuestionNumber == musicQuestionNumber {
                   startMusicGame(answerWasRight: false)
                }
            }
        }
        print(points)
    }
    
    func stopMusic() {
        guard audioPlayer != nil else {
            return
        }
        
        if audioPlayer!.isPlaying {
            audioPlayer!.stop()
        }
    }
    
    func playMusic(withName musicName: String) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: musicName, ofType: "mp3")!))
            audioPlayer!.setVolume(0.2, fadeDuration: 0)
            audioPlayer!.play()
        }
        catch {
            print(error.localizedDescription)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalSegue" {
            let dvc = segue.destination as! FinalViewController
            dvc.points = self.points
            
        }
    }
    
    func finishGame() {
        questionNumber = -1
        if audioPlayer!.isPlaying {
            audioPlayer!.stop()
        }

        performSegue(withIdentifier: "finalSegue", sender: self)
    }
    
}
