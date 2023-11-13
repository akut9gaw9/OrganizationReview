//
//  ReviewsApp.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import SwiftUI
import ComposableArchitecture

@main
struct ReviewsApp: App {
    var body: some Scene {
        WindowGroup {
            OrganizationReviewListView(
                store: Store(
                    initialState: OrganizationReviewListState(),
                    reducer: OrganizationReviewListReducer()
                )
            )
        }
    }
}
