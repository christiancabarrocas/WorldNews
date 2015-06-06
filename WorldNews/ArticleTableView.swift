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
                    self.parse(json)
                }
        }
    }

    func parse(data:JSON) {
        for (key: String, subJson: JSON) in data {
            if (key == "results"){
                let newData = subJson["results"] as NSDictionary
                let article = Article(initData: newData)
                articlesList.append(article)
            }
            if key == "copyright" {
                NSLog("Copy","")
            }
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlesList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("articleCell", forIndexPath: indexPath) as! UITableViewCell
        

        
        return cell

    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
}
