import Foundation
import SwiftUI

extension View {
    
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`
    @ViewBuilder
    func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition { transform(self) }
        else { self }
    }
    
    /// Applies the given transform if the given condition evaluates to `true`, otherwise applies an alternate transform.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View` if the condition is `true`.
    ///   - elseTransform: The transform to apply to the source `View` if the condition is `false`.
    /// - Returns: Either the modified `View` using the `transform` if the condition is `true`, or the modified `View` using the `elseTransform` if the condition is `false`.
    @ViewBuilder
    func ifElse<Transform: View, ElseTransform: View>(_ condition: Bool, transform: (Self) -> Transform,
                                                      elseTransform: (Self) -> ElseTransform) -> some View {
        if condition { transform(self) }
        else { elseTransform(self) }
    }
}
