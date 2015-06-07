//
//  Media.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 07/06/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import UIKit

enum MediaType {
    case Photo
    case Video
}

class Media {
    
    var title:String?
    var format:String?
    var url:NSURL?
    var copyright:String?
    var width:Int?
    var height:Int?
    var type:MediaType?
    var subtype:String?
    
    init () {
        
    }
    
    convenience init (initData:NSDictionary) {
        self.init()
        title = initData["title"] as? String
        format = initData["format"] as? String
        url = initData["url"] as? NSURL
        copyright = initData["copyright"] as? String
        width = initData["width"] as? Int
        height = initData["height"] as? Int
        type = initData["type"] as? MediaType
        subtype = initData["subtype"] as? String
    }
    
    func sampleMedia() -> Media {
        let dictionary = ["title":"A Script to Play the Role of Guest Star","abstract":"Filling your plate and keeping your wineglass upright are only two of the ways to contribute when someone else is the host."]
        let media = Media(initData: dictionary)
        return media
    }
}
