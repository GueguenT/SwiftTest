//
//  ViewController.swift
//  SwiftTest
//
//  Created by Thomas Gueguen on 21/03/2017.
//  Copyright © 2017 Thomas Gueguen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mTitleLabel : UILabel?
    
    @IBOutlet var mSegmentedBar : UISegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mTitleLabel?.text = "Thomas"
        ChangeColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ThisIsAButton()
    {
        mTitleLabel?.text = "0€"
    }
    
    @IBAction func ChangeColor()
    {
        if (mSegmentedBar?.selectedSegmentIndex == 0)
            
        {
            mTitleLabel?.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }
        else if (mSegmentedBar?.selectedSegmentIndex == 1)
        {
            mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
        }
        else
        {
            mTitleLabel?.textColor = UIColor.init(red: 0, green: 1.0, blue: 0, alpha: 1)

        }
    }
    
}
