//
//  NewsItemState.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import Foundation

// MARK: - NewsItemState

public struct NewsItemState: Equatable, Identifiable {
    
    // MARK: - Properties
    
    /// Unique identifier
    public let id: String
    
    /// The title of the news.
    public let newsTitle: String
    
    /// The publication date of the news.
    public let publicationDate: Date
    
    /// The URL of the news image.
    public let newsImageURL: URL
    
    /// If news is added to favourite
    public var isNewseAddedToFavourite = false
}

// MARK: - Text

extension NewsItemState {
    
    /// News publication date text
    public var publicationDateText: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.dateFormat = "d MMMM"
        return dateFormatter.string(from: publicationDate)
    }
}
