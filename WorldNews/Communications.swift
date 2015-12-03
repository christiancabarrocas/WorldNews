//
//  Communications.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 08/06/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation
import Alamofire

struct Communicator {
    
    func retrieveNews () -> [Article] {
        var news:[Article] = []
        Alamofire.request(.GET, apiURL)
            .responseJSON { response in
                do {
                    let json: AnyObject? = try? NSJSONSerialization.JSONObjectWithData(response.data!, options: [])
                    print(json)
                }
        }
        return news
    }
    
//    func getNews () -> [Article] {
//        Alamofire.request(.GET, apiURL).responseJSON { (response: Response<NYResponse, NSError>) in
//            
//            let nyResponse = response.result.value
//            if let news = nyResponse?.results {
//                for new in news {
//                    print(new.abstract)
//                }
//            }
//        }
//    }
}
