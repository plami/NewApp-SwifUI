//
//  Article.swift
//  NewsApp
//
//  Created by plamena on 12.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    
    let articles: [Article]
    
}

struct Article: Codable {
    
    let title: String
    let description: String?
    let author: String?
    let urlToImage: String?
    let content: String?
    let publishedAt: String
}
