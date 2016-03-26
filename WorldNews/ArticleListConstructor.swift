//  Created by Christian Cabarrocas

import Foundation
import UIKit

struct ArticleListConstructor {
    
    let cellHeight:CGFloat = 80.0
    let communicator: Communicator
    let apiType: APIType
    
    init (communicator: Communicator, apiType: APIType) {
        self.communicator = communicator
        self.apiType = apiType
    }
    
    func updateData (completion: (result:[Article]) -> Void) {
        communicator.retrieve(apiType) { (result) -> Void in
            if result.hasItems() {
                completion(result: result)
            }
        }
    }
}
