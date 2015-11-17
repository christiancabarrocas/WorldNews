//
//  Communications.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 08/06/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
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

import Foundation
import Alamofire

class Communications {
    
    class func retrieveNews () {
        Alamofire.request(.GET, apiURL)
            .responseJSON { response in
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(response.data!, options: .AllowFragments)
                    
                    if let results = json["results"] as? [[String: String]] {
                        parse(results)
//                        for new in results {
//                            if let new = blog["name"] as? String {
//                                names.append(name)
//                            }
//                        }
                    }
                } catch {
                    print("error serializing JSON: \(error)")
                }
        }
    }

    class func parse(data:[[String:String]]) -> [Article]{
        
        let articlesList = [Article]()
        
//        for (index: String, subJson: JSON) in articlesArray {
//            let title:String? = subJson["title"].string
//            let section:String? = subJson["section"].string
//            let data:NSDictionary = [title:title,section:section]
//            let newArticle:Article = Article(initData:data)
//            articlesList.append(newArticle)
//        }
//        
        return articlesList
    }
}