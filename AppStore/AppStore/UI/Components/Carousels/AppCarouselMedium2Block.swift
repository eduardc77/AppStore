//
//  AppCarouselMedium2Block.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI

struct AppCarouselMedium2Block: View {
	var title: String = "Title"
	let cellsNumber: Int

	var body: some View {
		AppMediumCard2()
	}
}

struct AppCarouselMedium2Block_Previews: PreviewProvider {
	static var previews: some View {
		AppCarouselMedium2Block(cellsNumber: 5)
	}
}
