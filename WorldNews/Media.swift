//  Created by Christian Cabarrocas

import UIKit
import ObjectMapper

enum MediaType:String {
    case Image = "image"
}

struct Media : Mappable {
    var caption:String?
    var url:NSURL?
    var copyright:String?
    var width:Int?
    var height:Int?
    var type:MediaType?
    
    init?(_ map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        url <- map["url"]
        width <- map["width"]
        height <- map["height"]
        type <- map["type"]
        caption <- map["caption"]
    }

}
