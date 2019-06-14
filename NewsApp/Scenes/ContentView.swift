//
//  ContentView.swift
//  NewsApp
//
//  Created by plamena on 12.06.19.
//  Copyright © 2019 plamena. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @ObjectBinding var model = ArticleListViewModel()
    
    var body: some View {
        
        NavigationView {
            List(model.articles) { article in
                
                ArticleCell(article: article)
            }
            .navigationBarTitle(Text("News"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct ArticleCell: View {
    
    var article: ArticleViewModel
    
    var body: some View {
        return NavigationButton(destination: ArticleDetails(article: article)) {
            VStack(alignment: .leading) {
                Text(article.title)
                    .font(.subheadline)
            }
        }
    }
}

