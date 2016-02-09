//  Created by Christian Cabarrocas

import Foundation
import UIKit

struct ArticleListController {
    
    let cellHeight:CGFloat = 80.0

    func updateData (completion: (result:[Article]) -> Void) {
        Communicator().retrieveNews { (result:[Article]) -> Void in
            if result.hasItems() {
                completion(result: result)
            }
        }
    }
}
