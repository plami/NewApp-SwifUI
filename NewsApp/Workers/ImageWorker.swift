//
//  ImageWorker.swift
//  NewsApp
//
//  Created by plamena on 13.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import Foundation
import UIKit

struct ImageWorker {
    
    private let url: String
    
    init(with url: String) {
        self.url = url
    }
    
    func loadImage() -> UIImage {
        var image = UIImage()
        guard let imageUrl = URL(string: url),
            let imageData = NSData(contentsOf: imageUrl) else {
                return image
        }
        image = UIImage(data: imageData as Data) ?? image
        
        return image
    }
}
