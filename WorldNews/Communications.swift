//  Created by Christian Cabarrocas

import Foundation
import Alamofire
import AlamofireObjectMapper

struct Communicator {
    
    func retrieveNews (completion: (result:[Article]) -> Void) {
        var news:[Article] = []
        Alamofire.request(.GET, apiURL).responseObject { (response:Response<NYResponse,NSError>) -> Void in
            let nyResponse = response.result.value
            if let someNews = nyResponse?.results {
                news = someNews
                completion(result:news)
            }
        }
    }
}
