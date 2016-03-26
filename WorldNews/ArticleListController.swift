//  Created by Christian Cabarrocas

import Foundation
import UIKit

struct ArticleListController {
    
    let cellHeight:CGFloat = 80.0
    let communicator: Communicator
    
    init (communicator: Communicator) {
        self.communicator = communicator
    }
    
    func updateData (completion: (result:[Article]) -> Void) {
        communicator.retrieve(APIType.TopStories) { (result) -> Void in
            if result.hasItems() {
                completion(result: result)
            }
        }
    }
}
