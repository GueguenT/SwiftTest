//
//  ViewController.swift
//  SwiftTest
//
//  Created by Thomas Gueguen on 21/03/2017.
//  Copyright © 2017 Thomas Gueguen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var mTitleLabel : UILabel?
    
    @IBOutlet var mSegmentedBar : UISegmentedControl?
    @IBOutlet var mSegmentedBarB : UISegmentedControl?
    
    @IBOutlet var mTableView : UITableView?
    
    var mData : MyDataModel = MyDataModel()
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tCell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
            tCell.textLabel?.text = "Mon titre n° \(indexPath.row)"
        
            return tCell
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 10
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mTitleLabel?.text = "Thomas"
        ChangeColor(sSender: (mSegmentedBar)!)
        mData.addGroup(sGroup: MyGroupModel.createWithTitle(sTitle: "my data", withCellNumber: 10))
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
    
    @IBAction func ChangeColor(sSender : UISegmentedControl)
    {
        NSLog("Youpi !")
        // if (mSegmentedBar?.selectedSegmentIndex == 0)
        // {
        //    mTitleLabel?.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        // }
        // else if (mSegmentedBar?.selectedSegmentIndex == 1)
        // {
        //    mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
        // }
        // else
        // {
        //    mTitleLabel?.textColor = UIColor.init(red: 0, green: 1.0, blue: 0, alpha: 1)
        // }
        
        switch sSender.selectedSegmentIndex{
        case 0:
            if (sSender == mSegmentedBar)
            {
                mTitleLabel?.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            }
            else if (sSender == mSegmentedBarB){
                mTitleLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
            break
        case 1:
            if (sSender == mSegmentedBar)
            {
            mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
            }
            else if (sSender == mSegmentedBarB){
                mTitleLabel?.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            }
            break
        case 2:
            if (sSender == mSegmentedBar)
            {
            mTitleLabel?.textColor = UIColor.init(red: 0, green: 1.0, blue: 0, alpha: 1)
            }
            else if (sSender == mSegmentedBarB){
                mTitleLabel?.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            }
            break
        default:
            mTitleLabel?.text = "Erreur de couleur"
            break
        }
        
        
    }
    
}
