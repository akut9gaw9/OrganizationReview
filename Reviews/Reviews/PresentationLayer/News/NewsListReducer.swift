//
//  NewsListReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture
import TCANetworkReducers
import Combine

// MARK: - NewsListReducer

public struct NewsListReducer: Reducer {
    
    // MARK: - Feature
    
    public var body: some Reducer<NewsListState, NewsListAction> {
        Scope(state: \.newsListPagination, action: /NewsListAction.newsListPagination) {
            PaginationReducer { page, pageSize in
                Future { _ in
                }
                .eraseToAnyPublisher()
            }
        }
        Reduce { state, action in
            switch action {
            case .newsListPagination(.response(.success(let data))):
                break
            case .newsListPagination(.response(.failure(let error))):
                break
            default:
                break
            }
            return .none
        }
        .forEach(\.newsItems, action: /NewsListAction.newsItem(id:action:)) {
            NewsItemReducer()
        }
    }
}
