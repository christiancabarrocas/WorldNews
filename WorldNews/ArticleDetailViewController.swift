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
            guard let urlImage = article?.getBestImage() else {return}
            image?.kf_setImageWithURL(urlImage,
                placeholderImage: nil,
                optionsInfo: [.Transition(.Fade(1))])
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
