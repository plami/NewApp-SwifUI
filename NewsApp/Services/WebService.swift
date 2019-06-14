//
//  WebService.swift
//  NewsApp
//
//  Created by plamena on 13.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import UIKit

typealias BaseCompletionHandler = ([Article]?) -> ()

class WebService: ServiceProtocol {
    
    func loadTopHeadlines(completionHandler: @escaping BaseCompletionHandler) {
        
        if let url = try? APIRouter.newsArticles.asURLRequest() {
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                
                guard let data = data, error == nil else {
                    completionHandler(nil)
                    return
                }
                
                let response = try? JSONDecoder().decode(NewsResponse.self, from: data)
                if let response = response {
                    DispatchQueue.main.async {
                        completionHandler(response.articles)
                    }
                }
            }.resume()
        }
    }
}
