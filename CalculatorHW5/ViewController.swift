//
//  ViewController.swift
//  CalculatorHW5
//
//  Created by Omer on 20.09.2023.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate{
 
 
    @IBOutlet weak var outputLabel: UILabel!
    var result:Double?
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
     
        // Do any additional setup after loading the view.
    }

    enum Operations: String{
        case sum = "+"
        case minus = "-"
        case multiply = "*"


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
        
        
        if outputLabel.text?.isEmpty == false{
            var result =  AdditionExpression(outputLabel.text!)
          
           let floatingNum = Int((result! * 10).truncatingRemainder(dividingBy: 10))
            
            outputLabel.text = String(result!)
            if floatingNum == 0 {

                let result = Int(result!)

                outputLabel.text = String(result)

            }else{

                outputLabel.text = String(result!)
            }
     
            result = 0
        }
       
    }
    @IBAction func commaButton(_ sender: Any) {
        
        
        if outputLabel.text!.last != "."  {
            
           var sayi = outputLabel.text?.last
            
            
            if let sayi = sayi {
                outputLabel.text! += "."
            }
           
        }
     
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
    func getNumbers(numbers:String){
        
        let nums = numbers.split(separator: "+")
        
        print(nums)
    }
    @IBAction func sumButton(_ sender: Any) {
        
        if(outputLabel.text?.last != "+" && outputLabel.text?.first != nil){
            outputLabel.text! += Operations.sum.rawValue
        }
     
        
    }
    @IBAction func sevenButton(_ sender: Any) {
        outputLabel.text! +=   String(Numbers.seven.rawValue)
    }
    
    
    @IBAction func acButton(_ sender: Any) {
        if outputLabel.text?.isEmpty == false{
            outputLabel.text?.removeLast()
        }
        
    }
    
    func AdditionExpression(_ expression: String) -> Double? {
       
        let components = expression.components(separatedBy: "+")
        
        var result = 0.0
        
        for component in components {
            
            if component.isEmpty == false && component != "."{
                print(component)
                if let number = Double(component) {
                    result += number
                } else {
            
                   
                    return nil
                }
            }
         
        }
        
        return result
    }





}

