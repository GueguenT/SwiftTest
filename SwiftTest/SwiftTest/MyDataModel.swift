//
//  MyDataModel.swift
//  SwiftTest
//
//  Created by Thomas Gueguen on 21/03/2017.
//  Copyright © 2017 Thomas Gueguen. All rights reserved.
//

import Foundation

class MyDataModel : NSObject {
    var mList : Array<NSObject> = []
    
    func addGroup (sGroup : MyGroupModel)
    {
        mList.append(sGroup)
    }
}
