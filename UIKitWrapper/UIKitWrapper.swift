import Foundation
import SwiftUI

/// Wrapper that allows to use UIKit views in SwiftUI
///  Example:
///     UIKitWrapper<UIVisualEffectView>() { item in
///         item.effect = UIBlurEffect(style: .light)
///     }
struct UIKitWrapper<Type: UIView>: UIViewRepresentable {
    let configuration: ((Type) -> Void)

    func makeUIView(context: UIViewRepresentableContext<Self>) -> Type {
        return Type()
    }

    func updateUIView(_ uiView: Type, context: UIViewRepresentableContext<Self>) {
         configuration(uiView)
    }
}
