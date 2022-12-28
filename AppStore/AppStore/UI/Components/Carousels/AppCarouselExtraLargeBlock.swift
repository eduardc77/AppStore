//
//  AppCarouselExtraLargeBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI


struct AppCarouselExtraLargeBlock: View {
	var body: some View {
		VStack {
			VStack {
				AppLargeCard1()
				AppLargeCard3()
				AppLargeCard2()
				AppLargeCard1()
				AppLargeCard2()
				AppLargeCard1()
				AppLargeCard3()
			}
		}
	}
}


struct AppCarrouselExtraLargeBlock_Previews: PreviewProvider {
	static var previews: some View {
		AppCarouselExtraLargeBlock()
	}
}
