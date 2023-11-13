//
//  NewsListAction.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation
import TCANetworkReducers

// MARK: - NewsListAction

public enum NewsListAction: Equatable {
    
    // MARK: - Cases
    
    /// General action that calls when view appears
    case onAppear
    
    /// General action that calls when view disappears
    case onDisappear
    
    // MARK: - Children
    
    /// Child action for `NewsItem` module.
    ///
    /// It's necessary as we use `ForEach` scope operator in current module's reducer.
    /// In short, the `newsItem` case means that every action in `NewsItem` module
    /// will be sent to current module with target element identifier
    case newsItem(id: NewsItemState.ID, action: NewsItemAction)
    
    // MARK: - Pagination
    
    case newsListPagination(PaginationAction<String, NSError>)
}
