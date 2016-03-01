//  Created by Christian Cabarrocas

import UIKit
import Kingfisher

class ArticleDetailViewController: UIViewController {

    var article:Article?
    
    @IBOutlet weak var titleLabel:UILabel! {
        didSet {
            titleLabel.text = article!.title
        }
    }
    
    @IBOutlet weak var image:UIImageView! {
        didSet {
            guard let thumb = article!.testURL else {return}
            if let backURL = NSURL(string: thumb) {
                image?.kf_setImageWithURL(backURL,
                    placeholderImage: nil,
                    optionsInfo: [.Transition(ImageTransition.Fade(1))])
            }
        }
    }
    
    @IBOutlet weak var articleText:UITextView! {
        didSet {
            articleText.text = article!.abstract
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
