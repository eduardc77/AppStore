//
//  ArcadeHeader.swift
//  AppStore
//
//  Created by Eduard Caziuc on 23.12.2022.
//

import SwiftUI

struct ArcadeHeader: View {
	@State var isAccountViewPresented = false

	var body: some View {
		ZStack {
			ParallaxHeaderView()

			VStack(spacing: 12) {
				AccountButton(isAccountViewPresented: $isAccountViewPresented)
					.padding(.top, 64)
					.frame(maxWidth: .infinity, alignment: .trailing)

				Spacer()

				Text(" Arcade")
					.foregroundColor(.secondary)
					.font(.title3.weight(.medium))
				Text(
                """
                Play 200+ games.
                No in-app purchases.
                No ads.
                """
				)
				.font(.title3.weight(.medium))
				.multilineTextAlignment(.center)
				.foregroundColor(.white)

				DefaultButton(title: "Try It Free")

				Text("One month free, then $6.66/month.")
					.font(.caption)
					.foregroundColor(.secondary)
					.padding(.bottom, 32)
			}
			.padding(.horizontal, 46)
			.frame(height: UIScreen.main.bounds.height * 0.75)
		}
	}
}


struct ArcadeHeader_Previews: PreviewProvider {
	static var previews: some View {
		ArcadeHeader()
	}
}
