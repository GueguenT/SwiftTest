//
//  MyGroupModel.swift
//  SwiftTest
//
//  Created by Thomas Gueguen on 21/03/2017.
//  Copyright © 2017 Thomas Gueguen. All rights reserved.
//

import Foundation
import UIKit

class MyGroupModel : NSObject {
    var mTitle: String = ""
    var mList: Array <NSObject> = []
    var mImage: UIImage?
    
    class func createWithTitle (sTitleLocalizationKey : String, withAssetName sName:String, withCellNumber sNumber:Int) -> MyGroupModel
    {
        let rObject = MyGroupModel()
        rObject.mTitle = NSLocalizedString(sTitleLocalizationKey, comment: "")
        rObject.mImage = UIImage.init(named: sName)
        
        for i in 0 ..< sNumber {
            let j : Int = i*i
        let tCell = MyCellModel.createMyCellWithTitle(sTitle: "\(rObject.mTitle) cell \(i)",
            sSubTitle: " sqr=\(j)")
        rObject.mList.append(tCell)
        }
        
        return rObject
    }
}
