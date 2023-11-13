//
//  NewsListState.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation
import ComposableArchitecture
import TCANetworkReducers

// MARK: - NewsListState

public struct NewsListState: Equatable {
    
    // MARK: - Properties
    
    // MARK: - Children
    
    /// Identified array of `NewsItemState`
    ///
    /// It's represents children of `NewsItemState` module.
    /// We use it here to integrate `NewsItemState` array logic inside current module.
    /// If you change the state inside one of the `NewsItemState` module items then all changes will be saved here.
    public var newsItems: IdentifiedArrayOf<NewsItemState>
    
    // MARK: - Pagination
    
    /// PaginationState instance
    public var newsListPagination: PaginationState<String>
}

// MARK: - Initializers

extension NewsListState {
 
    public init() {
        self.newsListPagination = PaginationState(pageSize: 30)
        self.newsItems = []
    }
}
