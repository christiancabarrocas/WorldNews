//  Created by Christian Cabarrocas

import UIKit

enum MediaType:String {
    case Image = "image"
}

struct Media {    
    var caption:String?
    var url:NSURL?
    var copyright:String?
    var width:Int?
    var height:Int?
    var type:MediaType?
}
