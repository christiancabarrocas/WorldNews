//
//  ArticleTableView.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 7/12/14.
//  Copyright (c) 2014 ccs. All rights reserved.
//

import UIKit
import Alamofire

class ArticleTableView: UITableViewController {

    var articlesList: NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRemoteData()
    }
    
    func getRemoteData () {
        Alamofire.request(.GET, apiURL, parameters:nil)
            .responseJSON { (_, _, jsonData, error) -> Void in
                
                if error == nil {
                    var dataDict:NSDictionary!
                    dataDict = jsonData as NSDictionary
                    self.articlesList = dataDict["results"] as NSArray
                }
            }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articlesList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("articleCell", forIndexPath: indexPath) as ArticleTableCell
        
        let article = Article.init(initData: self.articlesList[indexPath.row] as NSDictionary)
        cell.configureArticleCell(article)
        
        return cell

    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
}
