//
//  Communications.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 08/06/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Communications {
    
//    func makeRequest() -> [Article] {
//        Alamofire.request(.GET, apiURL)
//            .responseJSON { (request, response, data, error) in
//                if(error != nil) {
//                    NSLog("Error: \(error)")
//                }
//                else {
//                    let json = JSON(data!)
//                    return self.parse(json)
//                }
//        }
//    }
//    
//    private func parse(data:JSON) -> [Article]{
//        
//        var articlesList = [Article]()
//        let articlesArray = data["results"]
//        
//        for (index: String, subJson: JSON) in articlesArray {
//            let title:String? = subJson["title"].string
//            let section:String? = subJson["section"].string
//            let data:NSDictionary = [title:title,section:section]
//            let newArticle:Article = Article(initData:data)
//            articlesList.append(newArticle)
//        }
//        
//        return articlesList
//    }
}