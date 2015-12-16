//
//  ArticleDetailViewController.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 15/12/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

class ArticleDetailViewController: UIViewController {

    var article:Article!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    convenience init(article:Article) {
        self.article = article
    }
}
