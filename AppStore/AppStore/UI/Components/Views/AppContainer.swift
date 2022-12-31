//
//  AppContainer.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct AppContainer: View {
	var width: CGFloat = 75
	var height: CGFloat = 75

	var body: some View {
		RoundedRectangle(cornerRadius: 14, style: .continuous)
			.foregroundColor(Color.gray)
			.frame(width: width, height: height)
	}
}


struct AppShape_Previews: PreviewProvider {
	static var previews: some View {
		AppContainer()
	}
}
