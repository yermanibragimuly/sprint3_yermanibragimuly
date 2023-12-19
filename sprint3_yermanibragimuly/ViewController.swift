//
//  ViewController.swift
//  sprint3_yermanibragimuly
//
//  Created by Yerman Ibragimuly on 19.12.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    var increase: Int = 0
    var history: [String] = []
    var currentDate = Date()
    let dateFormatter = DateFormatter()

    @IBOutlet weak var historyLable: UITextView!
    @IBOutlet weak var buttonForReset: UIButton!
    @IBOutlet weak var buttonForMinus: UIButton!
    @IBOutlet weak var buttonForPlus: UIButton!
    @IBOutlet weak var scoreLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLable.text = "\(increase)"
        buttonForPlus.tintColor = .red
        buttonForMinus.tintColor = .blue
        historyLable.text = "История изменений:"
        dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
    }
    
    @IBAction func buttonForIncreaseNumber(_ sender: Any) {
        increase += 1
        scoreLable.text = "Значение счетчика: \(increase)"
        history.append("[\(dateFormatter.string(from: currentDate))]: значение изменено на +1")
        historyLable.text = "История изменений:\(history.joined(separator: ", "))"
    }
    
    @IBAction func buttonForPlusNumber(_ sender: Any) {
        increase += 1
        scoreLable.text = "Значение счетчика: \(increase)"
        history.append("[\(dateFormatter.string(from: currentDate))]: значение изменено на +1")
        historyLable.text = "История изменений:\(history.joined(separator: ", "))"
    }
    
    @IBAction func buttonForMinusNumber(_ sender: Any) {
        if increase > 0 {
            increase -= 1
            history.append("[\(dateFormatter.string(from: currentDate))]: значение изменено на -1")
            historyLable.text = "История изменений:\(history.joined(separator: ", "))"
        } else if increase > -1  {
            history.append("[\(dateFormatter.string(from: currentDate))]: попытка уменьшить значение счетчика ниже 0")
            historyLable.text = "История изменений:\(history.joined(separator: ", "))"
        }
        scoreLable.text = "Значение счетчика: \(increase)"
    }
    
    @IBAction func buttonForResetNumber(_ sender: Any) {
        increase = 0
        scoreLable.text = "Значение счетчика: \(increase)"
        history.append("[\(dateFormatter.string(from: currentDate))]: значение сброшено")
        historyLable.text = "История изменений:\(history.joined(separator: ", "))"
    }
    
}
