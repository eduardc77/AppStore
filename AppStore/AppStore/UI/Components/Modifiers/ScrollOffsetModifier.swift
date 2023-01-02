//
//  ScrollOffsetModifier.swift
//  AppStore
//
//  Created by Eduard Caziuc on 02.01.2023.
//

import SwiftUI

struct ScrollOffsetModifier: ViewModifier {
	@Binding var offset: CGFloat

	func body(content: Content) -> some View {
		content
			.overlay(content: {
				GeometryReader { proxy in
					let minY = proxy.frame(in: .named("SCROLL")).minY

					Color.clear
						.preference(key: OffsetKey.self, value: minY)
				}
				.onPreferenceChange(OffsetKey.self) { minY in
					self.offset = minY
				}
			})
	}
}

struct OffsetKey: PreferenceKey {
	static var defaultValue: CGFloat = 0
	static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
		value = nextValue()
	}
}

extension View {
	func scrollOffset(offset: Binding<CGFloat>) -> some View {
		modifier(ScrollOffsetModifier(offset: offset))
	}
}

