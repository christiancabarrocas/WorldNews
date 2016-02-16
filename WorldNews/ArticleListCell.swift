//  Created by Christian Cabarrocas

import UIKit
import Kingfisher

class ArticleListCell: UITableViewCell {

    @IBOutlet var titleLabel:UILabel?
    @IBOutlet var sectionLabel:UILabel?
    @IBOutlet var backgroundImage:UIImageView?
    
    var article:Article? {
        didSet {
            titleLabel!.text = article!.title
            sectionLabel!.text = article!.section
            guard let thumb = article!.testURL else {
                return
            }
            //TODO - Need to add gradient from black to transparent and black&white filter
            if let backURL = NSURL(string: thumb) {
                backgroundImage?.kf_setImageWithURL(backURL,
                    placeholderImage: nil,
                    optionsInfo: [.Transition(ImageTransition.Fade(1))])
                if let _ = backgroundImage?.image {
                    backgroundImage!.blackAndWhite()
                }
            }
        }
    }
}
