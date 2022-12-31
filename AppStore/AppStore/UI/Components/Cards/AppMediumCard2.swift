//
//  AppMediumCard2.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct AppMediumCard2: View {
	var body: some View {
		HStack(alignment: .top) {
			ZStack(alignment: .center) {
				ZStack {
					RoundedRectangle(cornerRadius: 16, style: .continuous)
						.foregroundColor(Color(UIColor.systemGray2))

					RoundedRectangle(cornerRadius: 10, style: .continuous)
						.foregroundColor(Color(UIColor.systemGray4))
						.padding()
						.mask(
							Circle()
								.size(width: 170, height: 170)
								.offset(x: -30, y: 10)
						)

					Text("+")
						.font(.system(size: 40))
						.fontWeight(.bold)
						.foregroundColor(Color(UIColor.systemGray4))
						.offset(x: 55, y: -55)
				}
				.frame(width: 150, height: 150)

				RoundedRectangle(cornerRadius: 10)
					.foregroundColor(Color(UIColor.gray))
					.frame(width: 50, height: 50)
					.offset(x: -60, y: 60)
			}

			VStack {
				ItemTitleLabel(text: "App title")
					.lineLimit(1)

				ItemDetailsLabel(text: "Description")
					.lineLimit(1)

				Spacer()

				GetButton(title: "$6.66")
			}

			.frame(width: 200, height: 150, alignment: .leading)
		}
	}
}


struct AppMediumCard2_Previews: PreviewProvider {
	static var previews: some View {
		AppMediumCard2()
	}
}

