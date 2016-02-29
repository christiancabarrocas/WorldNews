//  Created by Christian Cabarrocas

import UIKit

class ArticleListCell: UITableViewCell {

    @IBOutlet weak var titleLabel:UILabel?
    @IBOutlet weak var sectionLabel:UILabel?
    
    var article:Article? {
        didSet {
            titleLabel!.text = article!.title
            sectionLabel!.text = article!.section
        }
    }
}
