//  Created by Christian Cabarrocas

import Foundation
import Alamofire
import AlamofireObjectMapper

struct Communicator {

    func retrieve(endpoint:APIEndpoint, completion: (result:[Article]) -> Void) {
        Alamofire.request(.GET, endpoint.rawValue).responseObject { (response:Response<NYResponse,NSError>) -> Void in
            let nyResponse = response.result.value
            if let someNews = nyResponse?.results {
                completion(result:someNews)
            }
        }
    }
}
