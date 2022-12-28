//
//  AppCarouselLargeBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI

struct AppCarouselLargeBlock: View {
	var body: some View {
		TabView {
			ForEach(0 ..< 5) { item in
				VStack {
					Divider()
					VStack(alignment: .leading) {
						Text("UPDATE")
							.bold()
							.foregroundColor(.blue)
							.font(.footnote)
						
						Text("App title")
							.font(.title3)
						
						Text("Description")
							.foregroundColor(.secondary)
					}
					.frame(maxWidth: .infinity, alignment: .leading)
					RoundedRectangle(cornerRadius: 12, style: .continuous)
						.foregroundColor(Color.gray)
				}
			}
			.padding(.horizontal)
		}
		.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.373)
		.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
		.padding(.bottom, 24)
	}
}

struct AppCarouselLargeBlock_Previews: PreviewProvider {
	static var previews: some View {
		AppCarouselLargeBlock()
	}
}
