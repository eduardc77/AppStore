//
//  AppCarouselSmall2Block.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI

struct AppCarouselSmall2Block: View {
	var size: CGSize
	var width: CGFloat = 85
	var spacing: CGFloat = 8
	var items = 4

	var body: some View {
		VStack(spacing: 20) {
			infiniteCarouselSection(size: size)

			VStack(spacing: 10) {
				Text("Arcade")
					.font(.footnote.weight(.medium))

				SecondaryButton(title: "See all games")
			}
			.padding(.horizontal, 80)
		}
		.padding(.top, 36)
		.padding(.bottom, 24)
		.background(Color(.systemGroupedBackground))
	}

	private func infiniteCarouselSection(size: CGSize) -> some View {
		InfiniteCarousel(scrollingDirection: .left,
							  contentSize: size) {
			VStack {
				ForEach(0..<2, id: \.self) { index in
					HStack(spacing: 0) {
						ForEach(0..<items + 1, id: \.self) { _ in
							AppContainer(width: (size.width / CGFloat(items)) - spacing, height: (size.width / CGFloat(items)) - spacing)
								.padding(.trailing, spacing)
						}
					}
					.offset(x: index == 1 ? -(spacing * CGFloat(items)) : 0)
				}
			}
		}
	}
}

struct AppCarouselSmall2Block_Previews: PreviewProvider {
	static var previews: some View {
		AppCarouselSmall2Block(size: CGSize(width: 200, height: 500))
	}
}
