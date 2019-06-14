//
//  ServiceProtocol.swift
//  NewsApp
//
//  Created by plamena on 13.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import Foundation

protocol ServiceProtocol {
    
    func loadTopHeadlines(completionHandler: @escaping ([Article]?) -> ())
}

