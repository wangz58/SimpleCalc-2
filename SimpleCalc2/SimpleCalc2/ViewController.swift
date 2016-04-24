//
//  ViewController.swift
//  SimpleCalc2
//
//  Created by apple on 4/23/16.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var input = "";
    var allInput : [String] = [];
    var displayedResult = "";
    
    @IBOutlet weak var present: UITextField!
    
    @IBAction func onePressed(sender: AnyObject) {
        input = input + sender.currentTitle!!;
        present.text = input;
    }
    @IBAction func operandPressed(sender: AnyObject) {
        input += " " + sender.currentTitle!! + " ";
        present.text = input;
    }
    
    @IBAction func equals(sender: AnyObject) {
        if input != "" {
            let inputArr = input.characters.split {$0 == " "}.map { String($0) };
            let count = inputArr.count;
            var result: Int?;
            let multiOp : Set<String> = ["count", "avg", "fact"];
            
            if multiOp.contains(inputArr[1]) {
                NSLog("This is input: \(input)");
                NSLog("This is parsed array \(inputArr)");
                if inputArr[1] == "count" {
                    result = (count + 1) / 2;
                } else if inputArr[1] == "avg" {
                    var element:Int?;
                    result = 0;
                    var i = 0;
                    while i < count {
                        element = Int(inputArr[i]);
                        print("\(element!)");
                        result = result! + element!;
                        i = i + 2;
                    }
                    result = result! / (count - 1);
                } else if inputArr[1] == "fact" {
                    let base: Int? = Int(inputArr[0]);
                    result = 1;
                    var j = base!;
                    while j >= 1 {
                        result = result! * j;
                        j = j - 1;
                    }
                } else {
                    print("Invalid input!");
                }
            } else if count == 3 {
                
                let firstNum:Int? = Int(inputArr[0]);
                
                let oper = inputArr[1];
                
                let secondNum: Int? = Int(inputArr[2]);
                
                if oper == "+" {
                    result = firstNum! + secondNum!;
                } else if oper == "-" {
                    result = firstNum! - secondNum!;
                } else if oper == "*" {
                    result = firstNum! * secondNum!;
                } else if oper == "/" {
                    result = firstNum! / secondNum!;
                } else if oper == "%" {
                    result = firstNum! % secondNum!;
                }
            }

            NSLog("This is result: \(result)");
            if result != nil {
                displayedResult = String(result!);
            } else {
                displayedResult = "your input is invalid. Please try again";
            }
            allInput.append(input + " = " + displayedResult);
            present.text = displayedResult;
            input = "";
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let SecondVC: SecondViewController = segue.destinationViewController as! SecondViewController;
        SecondVC.history = allInput;
    }
    
}

