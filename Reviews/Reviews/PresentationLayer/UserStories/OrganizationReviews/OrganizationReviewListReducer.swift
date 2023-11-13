//
//  OrganizationReviewsListReducer.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import Foundation
import ComposableArchitecture

// MARK: - OrganizationReviewListReducer

public struct OrganizationReviewListReducer: Reducer {
    
    // MARK: - Reducer
    
    public var body: some Reducer<OrganizationReviewListState, OrganizationReviewListAction> {
        Reduce { state, action in
            return .none
        }
    }
    
}
