//
//  KeyboardResponsiveModifier.swift
//  ChatApplication
//
//  Created by Hamed on 1/15/22.
//

#if canImport(SwiftUI)
import SwiftUI

public struct KeyboardResponsiveModifier: ViewModifier {
    @State private var offset: CGFloat = 0

    public func body(content: Content) -> some View {
        content
            .padding(.bottom, offset)
            .onAppear {
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { _ in
                    self.offset = 148
                }

                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
                    self.offset = 0
                }
            }
    }
}

public extension View {
    func keyboardResponsive() -> ModifiedContent<Self, KeyboardResponsiveModifier> {
        modifier(KeyboardResponsiveModifier())
    }
}
#endif
