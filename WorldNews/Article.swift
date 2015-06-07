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
    var url:NSURL?
    var date:String?
    var thumbnail:NSURL?
    var author:String?
    var section:String?
    var subsection:String?
    var source:String?
    var type:String?
    
    init () {

    }
    
     convenience init (initData:NSDictionary) {
        self.init()
        section = initData["section"] as? String
        subsection = initData["subsection"] as? String
        type = initData["type"] as? String
        source = initData["source"] as? String
        title = initData["title"] as? String
        abstract = initData["abstract"] as? String
        url = initData["url"] as? NSURL
        date = initData["updated_date"] as? String
        thumbnail = initData["thumbnail_standard"] as? NSURL
        author = initData["byline"] as? String
    }
    
    func sampleArticle() -> Article {
        let dictionary:[String:String] = ["title":"A Script to Play the Role of Guest Star","abstract":"Filling your plate and keeping your wineglass."]
        let article = Article(initData: dictionary)
        return article
    }
}
