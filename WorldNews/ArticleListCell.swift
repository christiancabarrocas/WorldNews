//  Created by Christian Cabarrocas

import UIKit

class ArticleListCell: UITableViewCell {

    @IBOutlet weak var titleLabel:UILabel?
    @IBOutlet weak var sectionLabel:UILabel?
    @IBOutlet weak var dateLabel:UILabel?
    
    var article:Article? {
        didSet {
            titleLabel!.text = article!.title
            sectionLabel!.text = article!.section
            dateLabel!.text = article!.date
        }
    }
}
