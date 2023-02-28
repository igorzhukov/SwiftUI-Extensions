import Foundation
import SwiftUI

struct UIKitWrapper<Type: UIView>: UIViewRepresentable {
    let configuration: ((Type) -> Void)

    func makeUIView(context: UIViewRepresentableContext<Self>) -> Type {
        return Type()
    }

    func updateUIView(_ uiView: Type, context: UIViewRepresentableContext<Self>) {
         configuration(uiView)
    }
}