//
//  AppCarouselMedium1Block.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI


struct AppCarouselMedium1Block: View {
	var title: String = "Title"
	let cellsNumber: Int

	var body: some View {
		VStack {
			SectionHeaderExtendedBlock(title: title)
				.padding(.horizontal, 16)

			ScrollView([.horizontal], showsIndicators: false) {
				HStack {
					ForEach(Range(0...cellsNumber), id: \.self) { _ in
						AppMediumCard1()
					}
				}
			}
		}
		.frame(height: 250)
		.padding(.bottom, 24)
		.background(Color(.systemBackground))
	}
}


struct AppCarouselMedium1Block_Previews: PreviewProvider {
	static var previews: some View {
		AppCarouselMedium1Block(cellsNumber: 5)
	}
}
