//
//  AppCarouselSmall1Block.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI


struct AppCarouselSmall1Block: View {
	var title: String = "Title"

	var body: some View {
		VStack {
			SectionHeaderExtendedBlock(title: title)
				.padding()

			TabView {
				ForEach(0 ..< 5, id: \.self) { item in
					VStack {
						ForEach(0 ..< 3, id: \.self) { _ in
							AppSmallCard1()
						}
					}
				}
				.padding(.horizontal)
			}
			.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
			.tabViewStyle(PageTabViewStyle())
		}
		.frame(width: UIScreen.main.bounds.width, height: 250)
		.padding(.bottom)
		.background(Color(.systemBackground))
	}
}


struct AppCarouselSmall1Block_Previews: PreviewProvider {
	static var previews: some View {
		AppCarouselSmall1Block()
	}
}



