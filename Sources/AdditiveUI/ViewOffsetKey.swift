//
// ViewOffsetKey.swift
// Copyright (c) 2022 AdditiveUI
//
// Created by Hamed Hosseini on 11/16/22

#if canImport(SwiftUI)
import SwiftUI

public struct ViewOffsetKey: PreferenceKey {
    public typealias Value = CGFloat
    public static var defaultValue = CGFloat.zero
    public static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}
#endif
