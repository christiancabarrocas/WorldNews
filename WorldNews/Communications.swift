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

struct Communicator {
    
    func retrieveNews () -> [Article] {
        var news:[Article] = []
        Alamofire.request(.GET, apiURL)
            .responseJSON { response in
                do {
                    let json: AnyObject? = try? NSJSONSerialization.JSONObjectWithData(response.data!, options: [])
                    
                    if let j: AnyObject = json {
                        let article: Article? = decode(j)
                    }
//                    news = try ArticleParser().parse(fromData:response.data!)
                } catch {
                    print("error serializing JSON: \(error)")
                }
        }
        return news
    }
}

struct ArticleParser {
    
    enum Error: ErrorType {
        case InvalidJSON
    }
    
//    func convert (data:[Dictionary<String,String>]) -> [Article] {
//        var list:[Article] = []
//        for item in data {
//            list.append(Article(title:item["title"]!, abstract:item["abstract"]!, date:item["updated_date"]!, section:item["section"]!))
//        }
//        
//        return list
//    }
//    
//    func parse(fromData data: NSData) throws -> [Article] {
//        
//        guard let jsonDict = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? [String : AnyObject],
//            results = jsonDict?["results"] as? [Dictionary<String,String>] else {
//                throw Error.InvalidJSON
//            }
//        
//        let articles:[Article] = convert(results)
//        return articles
//        
//    }
}