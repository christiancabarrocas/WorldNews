//
//  Article.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 6/12/14.
//  Copyright (c) 2014 ccs. All rights reserved.
//

import UIKit

class Article {

    var title:String?
    var abstract:String?
    var url:String?
    var date:String?
    var thumbnail:NSURL?
    var author:String?
    
    init () {

    }
    
     convenience init (initData:NSDictionary) {
        self.init()
        title = initData["title"] as? String
        abstract = initData["abstract"] as? String
        url = initData["url"] as? String
        date = initData["date"] as? String
        thumbnail = initData["thumbnail"] as? NSURL
        author = initData["author"] as? String
    }
}
