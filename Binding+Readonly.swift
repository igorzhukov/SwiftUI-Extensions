import Combine
import SwiftUI

extension Binding {
    static func readOnly<T>(value: T) -> Binding<T> {
        return Binding<T>(get: { return value }, set: { _ in })
    }
}

