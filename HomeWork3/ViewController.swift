//
//  ViewController.swift
//  HomeWork3
//
//  Created by Вадим Дзюба on 21.12.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var delScoreButton: UIButton!
    @IBOutlet private weak var scoreLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet private weak var infoTextView: UITextView!
    @IBOutlet private weak var addScoreButton: UIButton!
    
    private var scoreCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Значение счетчика: " + String(scoreCount)
    }
    @IBAction func addScore(_ sender: Any) {
        scoreCount += 1
        scoreLabel.text = "Значение счетчика: " + String(scoreCount)
        let nowTime = Date().formatted()
        infoTextView.text += ("\n" + nowTime + ": значение изменено на +1")
    }
    
    @IBAction func resetScore(_ sender: Any) {
        scoreCount = 0
        scoreLabel.text = "Значение счетчика: " + String(scoreCount)
        let nowTime = Date().formatted()
        infoTextView.text += ("\n" + nowTime + ": значение сброшено")
    }
    @IBAction func delScore(_ sender: Any) {
        
        if(scoreCount <= 0){
            let nowTime = Date().formatted()
            infoTextView.text += ("\n" + nowTime + ": попытка уменьшить значение счётчика ниже 0")
        }
        else{
            scoreCount -= 1
            scoreLabel.text = "Значение счетчика: " + String(scoreCount)
            let nowTime = Date().formatted()
            infoTextView.text += ("\n" + nowTime + ": значение изменено на -1")
        }
    }
    
}

