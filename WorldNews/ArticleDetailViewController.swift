//  Created by Christian Cabarrocas

import UIKit

class ArticleDetailViewController: UIViewController {

    @IBOutlet var titleLabel:UILabel!
    var article:Article!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setupLabel () {
        titleLabel.text = article.title
    }
}
