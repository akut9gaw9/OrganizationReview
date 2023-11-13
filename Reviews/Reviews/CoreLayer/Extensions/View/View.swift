//
//  View.swift
//  Reviews
//
//  Created by Stanislav on 13.11.2023.
//

import Foundation

import SwiftUI

// MARK: - View

extension View {
    
    /// Positions this view within an invisible frame with the specified size.
    /// - Parameter size: A fixed `width` and `height` for the resulting view
    /// - Returns: A view with fixed dimensions of `widht` and `height`
    public func frame(size: CGSize) -> some View {
        self.frame(width: size.width, height: size.height)
    }
}
