//
//  OrganiztionReviewItemView.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import SwiftUI
import ComposableArchitecture
import Kingfisher

// MARK: - OrganiztionReviewItemView

public struct OrganiztionReviewItemView: View {
    
    // MARK: - Properties
    
    /// The store powering the `OrganiztionReviewListItem` reducer
    public let store: StoreOf<OrganiztionReviewItemReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            VStack(spacing: 15) {
                HStack(alignment: .top, spacing: 0) {
                    HStack(spacing: 8) {
                        KFImage(viewStore.authorImageURL)
                            .placeholder({ _ in
                                Color.background4
                            })
                            .resizable()
                            .frame(size: LayoutConstants.imageSize)
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 0) {
                            Text(viewStore.authorName)
                                .foregroundColor(.textDefault)
                                .font(.system(size: 15, weight: .bold))
                            Text(viewStore.publicationDate)
                                .font(.system(size: 13))
                                .foregroundColor(.textGray)
                        }
                    }
                    Spacer()
                    Text("Тут будут звездочки")
                        .font(.system(size: 10))
                        .foregroundColor(.textDefault)
                }
                Text(viewStore.reviewText)
                    .font(.system(size: 15))
                    .foregroundColor(.textGray)
            }
            .padding(16)
            .background(Color.background2)
            .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
        }
    }
}

// MARK: - LayoutConstants

private enum LayoutConstants {
    static let imageSize: CGSize = CGSize(width: 44, height: 44)
}

// MARK: - Preview

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        OrganiztionReviewItemView(
            store: Store(
                initialState: OrganiztionReviewItemState(
                    authorName: "John Simpson",
                    publicationDate: "1 декабря",
                    authorImageURL: URL(string: "https://img.freepik.com/free-photo/a-cupcake-with-a-strawberry-on-top-and-a-strawberry-on-the-top_1340-35087.jpg?w=996&t=st=1699872496~exp=1699873096~hmac=9901cd4149e4c13ce2fd99ba734e9fb0e1d85628b360974ee44db31484d96591")!,
                    reviewText: "Текст какой-то будет его много текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст "
                ),
                reducer: OrganiztionReviewItemReducer()
            )
        )
    }
}
