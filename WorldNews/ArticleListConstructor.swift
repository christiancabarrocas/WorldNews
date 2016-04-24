//  Created by Christian Cabarrocas

import UIKit

struct ArticleListConstructor {
    
    let cellHeight:CGFloat = 80.0
    let communicator: Communicator
    let apiEndpoint: APIEndpoint
    var data: [Article] = []
    
    init (communicator: Communicator, apiEndpoint: APIEndpoint) {
        self.communicator = communicator
        self.apiEndpoint = apiEndpoint
        updateData { (result) in
            self.data = result
        }
    }
    
    private func updateData (completion: (data:[Article]) -> Void) {
        communicator.retrieve(apiEndpoint) { (result) -> Void in            
            guard result.hasItems() else {
                completion(data: [])
                return
            }
            completion(data: result)
        }
    }
}
