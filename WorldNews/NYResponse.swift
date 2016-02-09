//  Created by Christian Cabarrocas

import UIKit
import ObjectMapper

struct NYResponse : Mappable{
    var status:String?
    var resultsCount:Int?
    var results:[Article]?
    
    init?(_ map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        status <- map["status"]
        resultsCount <- map["num_results"]
        results <- map["results"]
    }
}

