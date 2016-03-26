//  Created by Christian Cabarrocas

import Foundation
import Alamofire
import AlamofireObjectMapper

struct Communicator {

    func retrieve(type:APIType, completion: (result:[Article]) -> Void) {
        Alamofire.request(.GET, type.rawValue).responseObject { (response:Response<NYResponse,NSError>) -> Void in
            let nyResponse = response.result.value
            print("RESULTS:\(nyResponse!.resultsCount)")
            if let someNews = nyResponse?.results {
                completion(result:someNews)
            }
        }
    }
}
