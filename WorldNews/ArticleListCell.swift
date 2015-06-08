//
//  ArticleListCell.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 08/06/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import UIKit

class ArticleListCell: UITableViewCell {

    @IBOutlet var titleLabel:UILabel?
    @IBOutlet var sectionLabel:UILabel?
    
    var article:Article? {
        didSet {
            titleLabel!.text = article!.title
            sectionLabel!.text = article!.section
        }
    }
}
