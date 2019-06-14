//
//  ArticleListViewModel.swift
//  NewsApp
//
//  Created by plamena on 12.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

typealias OnSuccessCompletionHandlerArticle = ([Article]) -> ()
typealias OnErrorHandler = (NSError) -> ()

class ArticleViewModel: Identifiable {
    
    let id = UUID()
    
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
    
    var author: String {
        return self.article.author ?? ""
    }
    
    var urlToImage: String {
        return self.article.urlToImage ?? ""
    }
    
    var content: String {
        return self.article.content ?? ""
    }
    
    var publishedAt: String {
        return self.article.publishedAt
    }
}


class ArticleListViewModel: BindableObject {
    
    let didChange = PassthroughSubject<ArticleListViewModel,Never>()
    private let service: ServiceProtocol
    
    init(service: ServiceProtocol = WebService()) {
        self.service = service
        service.loadTopHeadlines { articles in
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
        }
    }
    
    var articles = [ArticleViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
}

