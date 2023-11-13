//
//  NewsListView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import ComposableArchitecture
import TCANetworkReducers

// MARK: - NewsListView

public struct NewsListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `NewsList` reducer
    public let store: StoreOf<NewsListReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 16) {
                    ForEachStore(
                        store.scope(
                            state: \.newsItems,
                            action: NewsListAction.newsItem(id:action:)
                        ),
                        content: NewsItemView.init
                    )
                    PaginationView(
                        store: store.scope(
                            state: \.newsListPagination,
                            action: NewsListAction.newsListPagination
                        ),
                        loader: {
                            ProgressView()
                        }
                    )
                }
            }
            .onAppear {
                viewStore.send(.onAppear)
            }
            .onDisappear {
                viewStore.send(.onDisappear)
            }
        }
    }
}

// MARK: - Preview

private struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView(
            store: Store(
                initialState: NewsListState(),
                reducer: NewsListReducer()
            )
        )
    }
}
