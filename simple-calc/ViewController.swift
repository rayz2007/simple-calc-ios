//
//  ViewController.swift
//  simple-calc
//
//  Created by Ray Zhang on 10/16/18.
//  Copyright © 2018 Ray Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var input: UITextField!
    var calcInput : String = "" {
        didSet{
            input.text = calcInput
        }
    }
    var numberInput : String = ""
    var numbers: [Double] = []
    var operation: String = ""
    

    @IBAction func press1(_ sender: UIButton) {
        numberInput.append("1");
        calcInput.append("1")
    }
    
    @IBAction func press2(_ sender: UIButton) {
        numberInput.append("2");
        calcInput.append("2")
    }
    
    @IBAction func press3(_ sender: UIButton) {
        numberInput.append("3");
        calcInput.append("3")
    }
    
    @IBAction func press4(_ sender: UIButton) {
        numberInput.append("4");
        calcInput.append("4")
    }
    
    @IBAction func press5(_ sender: UIButton) {
        numberInput.append("5");
        calcInput.append("5")
    }
    
    @IBAction func press6(_ sender: UIButton) {
        numberInput.append("6");
        calcInput.append("6")
    }
    
    @IBAction func press7(_ sender: UIButton) {
        numberInput.append("7");
        calcInput.append("7")
    }
    
    @IBAction func press8(_ sender: UIButton) {
        numberInput.append("8");
        calcInput.append("8")
    }
    
    @IBAction func press9(_ sender: UIButton) {
        numberInput.append("9");
        calcInput.append("9")
        
    }
    
    @IBAction func press0(_ sender: UIButton) {
        numberInput.append("0");
        calcInput.append("0")
    }
    
    
    @IBAction func pressDecimal(_ sender: UIButton) {
        numberInput.append(".");
        calcInput.append(".")
    }
    
    @IBAction func pressPlus(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "+"
            calcInput.append(operation)
        }
    }
    
    @IBAction func pressMinus(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "-"
            calcInput.append(operation)
        }
        
    }
    
    
    @IBAction func pressMultiply(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "*"
            calcInput.append(operation)
        }
    }
    
    
    @IBAction func pressDivide(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "/"
            calcInput.append(operation)
        }
    }
    
    
    @IBAction func pressMod(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "%"
            calcInput.append(operation)
        }
    }
    
    @IBAction func pressCount(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "count"
            calcInput.append(operation)
        }
    }
    
    @IBAction func pressAvg(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "avg"
            calcInput.append(operation)
        }
    }
    
    
    @IBAction func pressFact(_ sender: UIButton) {
        if (!numberInput.isEmpty) {
            numbers.append(Double(numberInput) ?? 0)
            numberInput = "";
            operation = "fact"
            calcInput.append(operation)
        }
    }
    
    @IBAction func pressEqual(_ sender: UIButton) {
        if(!numberInput.isEmpty){
            numbers.append(Double(numberInput) ?? 0)
            numberInput = ""
        }
        switch operation {
        case "+":
            calcInput = String(numbers[0] + numbers[1])
            numberInput = String(numbers[0] + numbers[1])
            numbers = []
            operation = ""
        case "-":
            calcInput = String(numbers[0] - numbers[1])
            numberInput = String(numbers[0] - numbers[1])
            numbers = []
            operation = ""
        case "*":
            calcInput = String(numbers[0] * numbers[1])
            numberInput = String(numbers[0] * numbers[1])
            numbers = []
            operation = ""
        case "/":
            calcInput = String(numbers[0] / numbers[1])
            numberInput = String(numbers[0] / numbers[1])
            numbers = []
            operation = ""
        case "%":
            calcInput = String(Int(numbers[0]) % Int(numbers[1]))
            numberInput = String(Int(numbers[0]) % Int(numbers[1]))
            numbers = []
            operation = ""
        case "count":
            calcInput = String(numbers.count)
            numberInput = String(numbers.count)
            numbers = []
            operation = ""
        case "avg":
            let total: Double = Double(numbers.count)
            var sum: Double = 0.0
            numbers.forEach({ number in
                sum += number
            })
            let avg:Double = sum/total
            calcInput = String(avg)
            numberInput = String(avg)
            numbers = []
            operation = ""
        case "fact":
            var fact = 1
            for i in 1...Int(numbers[0]){
                fact *= i
            }
            calcInput = String(fact)
            numberInput = String(fact)
            numbers = []
            operation = ""
        default:
            clear()
        }
    }
    
    @IBAction func pressClear(_ sender: UIButton) {
       clear()
    }
    
    func clear(){
        calcInput = ""
        numberInput = ""
        operation = ""
        numbers = []
    }
}

