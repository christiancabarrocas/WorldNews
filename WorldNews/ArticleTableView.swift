//
//  ArticleTableView.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 7/12/14.
//  Copyright (c) 2014 ccs. All rights reserved.
//

import UIKit

class ArticleTableView: UITableViewController {
    
    //let articlesList: [Article] = Communications().makeRequest()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
//        return articlesList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("articleCell", forIndexPath: indexPath) as! ArticleListCell
        
        let sampleArticle = Article().sampleArticle()
        cell.article = sampleArticle
        return cell

    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
}
