//
//  TopAppsCategoriesBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct TopAppsCategoriesBlock: View {
	var body: some View {
		VStack {
			SectionHeaderExtendedBlock(title: "Top Categories")
				.padding(.bottom, 2)
			
			VStack {
				SingleLineIconAndButtonView(emojiImage: "⌚️", buttonTitle: "Apple Watch Apps")
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "📷", buttonTitle: "Photo & Video")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "🍿", buttonTitle: "Entertainment")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "🚲", buttonTitle: "Health & Fitness")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "🌏", buttonTitle: "Education")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "📡", buttonTitle: "News")
				}
			}
			.font(.title3)
			.padding(.leading, 4)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(.horizontal)
	}
}


struct TopAppsCategoriesBlock_Previews: PreviewProvider {
	static var previews: some View {
		TopAppsCategoriesBlock()
	}
}
