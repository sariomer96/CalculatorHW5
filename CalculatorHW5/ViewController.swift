//
//  ViewController.swift
//  CalculatorHW5
//
//  Created by Omer on 20.09.2023.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate{
 
 
    @IBOutlet weak var outputLabel: UILabel!
    let result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
     
        // Do any additional setup after loading the view.
    }

    enum Numbers:Int {
    case zero = 0
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
        
    }
    @IBAction func resultButton(_ sender: Any) {
    }
    @IBAction func commaButton(_ sender: Any) {
    }
    @IBAction func clearButton(_ sender: Any) {
        outputLabel.text = ""
    }
    @IBAction func threeButton(_ sender: Any) {
        outputLabel.text! += String(Numbers.three.rawValue)
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        outputLabel.text! +=  String(Numbers.zero.rawValue)
    }
    @IBAction func twoButton(_ sender: Any) {
        outputLabel.text! +=  String(Numbers.two.rawValue)
    }
    @IBAction func oneButton(_ sender: Any) {
        outputLabel.text! +=  String(Numbers.one.rawValue)
    }
    @IBAction func sixButton(_ sender: Any) {
        outputLabel.text! +=  String(Numbers.six.rawValue)
    }
    @IBAction func fiveButton(_ sender: Any) {
        outputLabel.text! += String( Numbers.five.rawValue)
    }
    @IBAction func nineButton(_ sender: Any) {
        outputLabel.text! +=  String(Numbers.nine.rawValue)
    }
    @IBAction func eightButton(_ sender: Any) {
        outputLabel.text! +=  String(Numbers.eight.rawValue)
    }
    @IBAction func fourButton(_ sender: Any) {
        outputLabel.text! +=  String( Numbers.four.rawValue)
    }
    @IBAction func sevenButton(_ sender: Any) {
        outputLabel.text! +=   String(Numbers.seven.rawValue)
    }
}

