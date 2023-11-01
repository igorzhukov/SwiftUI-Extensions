//
//  View+CornerRadius.swift
//  ReLike
//
//  Created by Igor Zhukov on 10/10/23.
//

import Foundation
import SwiftUI

/// A `View` extension to provide corner-radius to specific corners.

extension View {
    /// Apply a corner radius to specific corners of a view.
    ///
    /// - Parameters:
    ///   - radius: The radius value to be applied. Default value is `.infinity` which represents a quarter-circle.
    ///   - corners: The set of corners that need to be rounded. Default value is `.allCorners` which represents all four corners.
    ///
    /// - Returns: A view that rounds the specified corners of the original view to the specified radius.
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(
            RoundedCorner(radius: radius, corners: corners)
        )
    }
}

/// A `Shape` struct that creates a path with rounded corners.

fileprivate struct RoundedCorner: Shape {
    /// The radius to be applied to the corners.
    var radius: CGFloat = .infinity
    
    /// The corners that need to be rounded.
    var corners: UIRectCorner = .allCorners
    
    /// Creates a path for the current shape of the view.
    ///
    /// - Parameters:
    ///   - rect: The rectangular bounds of the shape.
    ///
    /// - Returns: A path that represents the shape within the specified rectangular bounds.
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
