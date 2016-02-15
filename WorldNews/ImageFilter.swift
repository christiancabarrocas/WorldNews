//
//  ImageFilter.swift
//  WorldNews
//
//  Created by Christian Cabarrocas on 11/02/16.
//  Copyright © 2016 Wasabilabs. All rights reserved.
//

import UIKit

extension UIImageView {
    
    typealias Filter = CIImage -> CIImage
    
    func blackAndWhite () {
        let filter = CIFilter(name:"CIPhotoEffectNoir")
        let context = CIContext(options: nil)
        let ciImage = CIImage(image:self.image!)
        filter!.setValue(ciImage, forKey: kCIInputImageKey)
        let imageSize:CGRect = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.width*2, self.frame.height*2)
        self.image = UIImage(CGImage: context.createCGImage(filter!.outputImage!, fromRect: imageSize))
    }
    
    func blur(radius:Double) -> Filter {
        return { image in
            let parameters = [kCIInputRadiusKey:radius,kCIInputImageKey:image]
            let filter = CIFilter(name: "CIGaussianBlur",withInputParameters:parameters)
            return filter!.outputImage!
        }
    }
}