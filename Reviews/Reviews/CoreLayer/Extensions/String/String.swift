//
//  String.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import Foundation

// MARK: - String

extension String {
    
    /// Creating the correct date type format from string type
    /// - Returns: Correct date format
    public func asDate() -> Date? {
        dateFromISO8601Format() ?? dateFromMediumFormat()
    }
    
    public func dateFromISO8601Format() -> Date? {
        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        let fractionDate = dateFormatter.date(from: self)
        dateFormatter.formatOptions = [.withInternetDateTime]
        let nonFractionDate = dateFormatter.date(from: self)
        return fractionDate ?? nonFractionDate
    }
    
    public func dateFromMediumFormat() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.date(from: self)
    }
}
