//
//  RecordedAudio.swift
//  Pitch Perfect
//
//  Created by Jason Chambers on 3/7/15.
//  Copyright (c) 2015 Jason Chambers. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject {
    var filePathUrl: NSURL!
    var title: String!
    
    init(aFilePathUrl: NSURL, aTitle: String) {
        filePathUrl = aFilePathUrl
        title = aTitle
    }
}
