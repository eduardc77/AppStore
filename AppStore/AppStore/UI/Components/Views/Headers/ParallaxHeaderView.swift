//
//  ParallaxHeaderView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 31.12.2022.
//

import SwiftUI

struct ParallaxHeaderView: View {
	let height: CGFloat = UIScreen.main.bounds.height * 0.75

	var body: some View {
		GeometryReader { proxy in
			if proxy.frame(in: .global).minY > -height {
				Rectangle()
					.fill(Color(.systemGray2))
					.scaledToFill()
					.offset(y: offsetY(proxy: proxy))
					.frame(width: proxy.size.width, height: parallaxHeight(proxy: proxy))
			}
		}
		.frame(minHeight: height)
	}
}

private extension ParallaxHeaderView {
	func offsetY(proxy: GeometryProxy) -> CGFloat {
		-proxy.frame(in: .global).minY
	}

	func parallaxHeight(proxy: GeometryProxy) -> CGFloat {
		proxy.frame(in: .global).minY > 0 ? proxy.frame(in: .global).minY + height : height
	}
}
