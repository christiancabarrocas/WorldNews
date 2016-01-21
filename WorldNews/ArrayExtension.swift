//
//  ArrayExtension.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 21/01/16.
//  Copyright © 2016 Wasabilabs. All rights reserved.
//

import Foundation

extension Array {
    
    func hasItems () -> Bool {
        if self.count > 0 {
            return true
        }
        return false
    }
}