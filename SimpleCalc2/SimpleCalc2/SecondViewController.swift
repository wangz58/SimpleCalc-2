//
//  SecondViewController.swift
//  SimpleCalc2
//
//  Created by apple on 4/23/16.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var history: [String] = [];
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet weak var label: UILabel!
//    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSizeMake(400, 2300);
        // Do any additional setup after loading the view.
        label.text = "";
        var i = history.count - 1;
        while i >= 0 {
            label.text! += history[i] + "\n";
            i = i - 1;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
