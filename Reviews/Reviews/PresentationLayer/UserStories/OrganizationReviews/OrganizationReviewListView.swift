//
//  OrganizationReviewsListView.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import SwiftUI
import ComposableArchitecture

// MARK: - OrganizationReviewListView

public struct OrganizationReviewListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `OrganiztionReviewList` reducer
    public let store: StoreOf<OrganizationReviewListReducer>
    
    // MARK: - View
    
    public var body: some View {
        Text("Hello")
    }
}

// MARK: - Preview

#Preview {
    OrganizationReviewListView(
        store: Store(
            initialState: OrganizationReviewListState(),
            reducer: OrganizationReviewListReducer()
        )
    )
}
