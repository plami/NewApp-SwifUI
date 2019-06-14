//
//  ArticleDetails.swift
//  NewsApp
//
//  Created by plamena on 12.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import Foundation
import SwiftUI

struct ArticleDetails: View {
    
    let article: ArticleViewModel
    
    var body: some View {
        
        VStack {
            Image(uiImage: ImageWorker(with: article.urlToImage).loadImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .offset(y: -50)
                .padding(.top)
            Text("Author: \(article.author)")
                .font(.headline)
                .offset(y: -10)
                .lineLimit(nil)
            HStack (alignment: .top){
                Text(article.description)
                    .lineLimit(nil)
                Spacer()
                Text("\(article.publishedAt.toDate().toString(dateFormat: "dd-MMM-yyyy"))")
                    .font(.subheadline).padding()
            }
        }
        .padding()
    }
}
