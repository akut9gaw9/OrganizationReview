//
//  NewsItemView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import ComposableArchitecture
import Kingfisher

// MARK: - NewsItemView

public struct NewsItemView: View {
    
    // MARK: - Properties
    
    /// The store powering the `NewsItem` reducer
    public let store: StoreOf<NewsItemReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            HStack(alignment: .top, spacing: 0) {
                KFImage(viewStore.newsImageURL)
                    .resizable()
                    .frame(width: 120)
                VStack(alignment: .leading, spacing: 0) {
                    Text(viewStore.newsTitle)
                        .font(.system(size: 17))
                    Spacer()
                    Text(viewStore.publicationDateText)
                        .foregroundColor(.hex("#7F7F7F"))
                        .font(.system(size: 15))
                }
                .padding(.vertical, 16)
                .padding(.leading, 16)
                Spacer()
                Button {
                    viewStore.send(.addToFavourite)
                } label : {
                    Image(
                        systemName: viewStore.isNewseAddedToFavourite
                        ? "heart.fill"
                        : "heart"
                    )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.hex("#32ADE6"))
                    .frame(width: 24, height: 24)
                }
                .padding([.top,.trailing], 16)
            }
            .frame(height: 120)
            .background(Color.white)
            .cornerRadius(26)
        }
    }
}

// MARK: - Preview

struct NewsItem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            NewsItemView(
                store: Store(
                    initialState: NewsItemState(
                        id: "132",
                        newsTitle: "Заголовок длинный, не длинный длинный, что очень длинный и не длинный но длинный",
                        publicationDate: Date(),
                        newsImageURL:
                            URL(string: "https://img.freepik.com/free-photo/a-cupcake-with-a-strawberry-on-top-and-a-strawberry-on-the-top_1340-35087.jpg?w=996&t=st=1699872496~exp=1699873096~hmac=9901cd4149e4c13ce2fd99ba734e9fb0e1d85628b360974ee44db31484d96591")!
                    ),
                    reducer: NewsItemReducer()
                )
            )
            .padding(.horizontal, 8)
        }
    }
}
