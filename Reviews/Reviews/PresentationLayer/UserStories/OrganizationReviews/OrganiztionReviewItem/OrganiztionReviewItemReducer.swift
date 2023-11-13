//
//  OrganiztionReviewItemReducer.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import Foundation
import ComposableArchitecture

// MARK: - OrganiztionReviewItem

public struct OrganiztionReviewItemReducer: Reducer {
    
    // MARK: - Reducer
    
    public var body: some Reducer<OrganiztionReviewItemState, OrganiztionReviewItemAction> {
        Reduce { state, action in
            switch action {
            default:
                return .none
            }
        }
    }
}
