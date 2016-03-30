//  Created by Christian Cabarrocas

import UIKit
import ObjectMapper

struct Article : Mappable{
    var title:String?
    var abstract:String?
    var date:String?
    var section:String?
    var subsection:String?
    var type:String?
    var source:String?
    var url:String?
    var author:String?
    var multimedia:[Media]?
    
    init?(_ map: Map) {}
    
    mutating func mapping(map: Map) {
        title <- map["title"]
        abstract <- map["abstract"]
        date <- map["update_date"]
        section <- map["section"]
        subsection <- map["subsection"]
        type <- map["item_type"]
        source <- map["source"]
        url <- map["url"]
        author <- map["byline"]
        multimedia <- map["multimedia"]
    }
    
    func getBestImage () -> NSURL? {
        guard let multimedia = self.multimedia else {return nil}
        guard let media = multimedia.last else {return nil}
        return NSURL(string: media.url!)!
    }
    
    func link() -> NSURL {
        return NSURL(string: url!)!
    }
}

