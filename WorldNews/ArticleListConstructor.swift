//  Created by Christian Cabarrocas

import Foundation
import UIKit

struct ArticleListConstructor {
    
    let cellHeight:CGFloat = 80.0
    let communicator: Communicator
    let apiEndpoint: APIEndpoint
    
    init (communicator: Communicator, apiEndpoint: APIEndpoint) {
        self.communicator = communicator
        self.apiEndpoint = apiEndpoint
    }
    
    func updateData (completion: (result:[Article]) -> Void) {
        communicator.retrieve(apiEndpoint) { (result) -> Void in
            if result.hasItems() {
                completion(result: result)
            }
        }
    }
}
