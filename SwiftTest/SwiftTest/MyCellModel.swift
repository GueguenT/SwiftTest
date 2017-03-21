//
//  MyCellModel.swift
//  SwiftTest
//
//  Created by Thomas Gueguen on 21/03/2017.
//  Copyright © 2017 Thomas Gueguen. All rights reserved.
//

import Foundation

class MyCellModel : NSObject {
    var mTitle : String = ""
    var mSubTitle : String = ""
    
    class func createMyCellWithTitle (sTitle : String, sSubTitle : String) -> MyCellModel {
        let rObject = MyCellModel()
        rObject.mTitle = "\(sTitle)"
        rObject.mSubTitle = " --- \(sSubTitle)"
        return rObject
    }
}
