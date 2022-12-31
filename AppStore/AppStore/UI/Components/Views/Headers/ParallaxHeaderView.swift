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
					Image("apple-arcade-header")
						  .resizable()
						  .scaledToFill()
						  .frame(width: proxy.size.width, height: parallaxHeight(proxy: proxy))
						  .clipped()
						  .offset(y: offsetY(proxy: proxy))
		  }
		  .frame(height: height)
	 }
}

private extension ParallaxHeaderView {
	 func offsetY(proxy: GeometryProxy) -> CGFloat {
		 proxy.frame(in: .global).minY <= 0 ? 0 : -proxy.frame(in: .global).minY
	 }

	 func parallaxHeight(proxy: GeometryProxy) -> CGFloat {
		 proxy.frame(in: .global).minY <= 0 ? proxy.size.height : proxy.size.height + proxy.frame(in: .global).minY
	 }
}
