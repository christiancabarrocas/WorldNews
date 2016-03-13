//  Created by Christian Cabarrocas

import UIKit
import ObjectMapper

struct Media : Mappable {
    var caption:String?
    var url:String?
    var copyright:String?
    var width:Int?
    var height:Int?
    var type:String?
    var subtype:String?
    var format:String?
    
    init?(_ map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        url <- map["url"]
        width <- map["width"]
        height <- map["height"]
        type <- map["type"]
        subtype <- map["subtype"]
        caption <- map["caption"]
        format <- map["format"]
    }

}
