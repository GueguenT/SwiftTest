//
//  MyGroupModel.swift
//  SwiftTest
//
//  Created by Thomas Gueguen on 21/03/2017.
//  Copyright © 2017 Thomas Gueguen. All rights reserved.
//

import Foundation

class MyGroupModel : NSObject {
    var mTitle: String = ""
    var mList: Array <NSObject> = []
    
    class func createWithTitle (sTitle : String, withCellNumber sNumber:Int) -> MyGroupModel
    {
        let rObject = MyGroupModel()
        rObject.mTitle = sTitle
        
        for i in 0 ..< sNumber {
            let j : Int = i*i
        let tCell = MyCellModel.createMyCellWithTitle(sTitle: "cell \(i)", sSubTitle: "sqr=\(j)")
        rObject.mList.append(tCell)
        }
        
        return rObject
    }
}
