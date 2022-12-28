//
//  AppContainer.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct AppContainer: View {
	var body: some View {
		RoundedRectangle(cornerRadius: 12, style: .continuous)
			.foregroundColor(Color.gray)
			.frame(width: 75, height: 75)
	}
}


struct AppShape_Previews: PreviewProvider {
	static var previews: some View {
		AppContainer()
	}
}
