//  Created by Christian Cabarrocas

import UIKit
import ObjectMapper

enum ArticleType {
    case Article
    case Interactive
}

struct Article : Mappable{
    var title:String?
    var abstract:String?
    var date:String?
    var section:String?
    var subsection:String?
    var type:ArticleType?
    var source:String?
    var url:String?
    var author:String?
    var thumbnail:String?
    var multimedia:[Media]?
    var testURL:String?
    
    init?(_ map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        title <- map["title"]
        abstract <- map["abstract"]
        date <- map["update_date"]
        section <- map["section"]
        subsection <- map["subsection"]
        type <- map["itmem_type"]
        source <- map["source"]
        url <- map["url"]
        author <- map["byline"]
        thumbnail <- map["thumnail_standard"]
        multimedia <- map["multimedia"]
        testURL <- map["multimedia.0.url"]
    }
}

