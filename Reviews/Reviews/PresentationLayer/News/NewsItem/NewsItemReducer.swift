//
//  NewsItemReducer.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import ComposableArchitecture

// MARK: - NewsItemReducer

public struct NewsItemReducer: Reducer {
    
    // MARK: - Feature
    
    public var body: some Reducer<NewsItemState, NewsItemAction> {
        Reduce { state, action in
            switch action {
            case .addToFavourite:
                state.isNewseAddedToFavourite.toggle()
            default:
                break
            }
            return .none
        }
    }
}
