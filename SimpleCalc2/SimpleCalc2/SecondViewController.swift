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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.contentSize.height = 1000;
        var i = 0;
        while i < history.count {
            let oneHistory = UILabel();
            oneHistory.text = history[i];
            oneHistory.textColor = UIColor.blackColor();
            print(oneHistory);
            scrollView.insertSubview(oneHistory, atIndex: i);
            i = i + 1;
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
