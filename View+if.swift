import Foundation
import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition { transform(self) }
        else { self }
    }

    @ViewBuilder
    func ifElse<Transform: View, ElseTransform: View>(_ condition: Bool, transform: (Self) -> Transform,
                                                      elseTransform: (Self) -> ElseTransform) -> some View {
        if condition { transform(self) }
        else { elseTransform(self) }
    }
}
