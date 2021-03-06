//  Created by Christian Cabarrocas

import UIKit
import Kingfisher
import Haneke

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
            
            //Haneke version
//            image.hnk_setImageFromURL(urlImage)
            
            //Kingsfisher version
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
    
    @IBOutlet weak var articleContent:UIWebView! {
        didSet {
            guard let contentURL = article?.link() else {
                articleContent.hidden = true
                return
            }
            articleContent.loadRequest(NSURLRequest(URL: contentURL))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
