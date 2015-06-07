//
//  ArticleTableView.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 7/12/14.
//  Copyright (c) 2014 ccs. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ArticleTableView: UITableViewController {

    var articlesList = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
    }
    
    
    private func makeRequest() {
        Alamofire.request(.GET, apiURL)
            .responseJSON { (request, response, data, error) in
                if(error != nil) {
                    NSLog("Error: \(error)")
                }
                else {
                    let json = JSON(data!)
//                    self.parse(json)
                }
        }
    }

//    func parse(data:JSON) {
//        
//        let articlesArray = data["results"].dictionaryValue
//        for article in articlesArray {
//            let newArticle = Article(initData: article)
//            articlesList.append(newArticle)
//        }
//        
//        for (key: String, subJson: JSON) in data {
//            if (key == "results"){
//                let newData = subJson["results"]
//                let article = Article(initData: newData)
//                articlesList.append(article)
//            }
//        }
//    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
        return articlesList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("articleCell", forIndexPath: indexPath) as! UITableViewCell
        
        let sampleArticle = Article().sampleArticle()
        cell.textLabel?.text = sampleArticle.title
        
        return cell

    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
}
