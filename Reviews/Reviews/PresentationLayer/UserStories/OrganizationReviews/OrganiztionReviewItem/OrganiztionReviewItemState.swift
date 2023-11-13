//
//  OrganiztionReviewItemState.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import Foundation

// MARK: - OrganiztionReviewItemState

public struct OrganiztionReviewItemState: Equatable {
    
    // MARK: - Properties
    
    /// The author's name of the review.
    public var authorName: String
    
    /// The publication date of the review.
    public var publicationDate: Date
    
    /// The URL of the author's image.
    public var authorImageURL: URL
    
    /// The text of the review.
    public var reviewText: String
}
