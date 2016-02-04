//  Created by Christian Cabarrocas
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

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

