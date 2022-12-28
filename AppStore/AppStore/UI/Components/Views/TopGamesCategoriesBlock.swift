//
//  TopGamesCategoriesBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct TopGamesCategoriesBlock: View {
	var body: some View {
		VStack(alignment: .leading) {
			SectionHeaderExtendedBlock(title: "Top Categories")
				.padding(.bottom, 24)
			
			VStack {
				SingleLineIconAndButtonView(emojiImage: "👾", buttonTitle: "Casual")
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "🏰", buttonTitle: "Strategy")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "⚔️", buttonTitle: "Action")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "🏁", buttonTitle: "Racing")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "🧩", buttonTitle: "Puzzle")
				}
				
				Group {
					Divider()
					SingleLineIconAndButtonView(emojiImage: "🥽", buttonTitle: "Simulation")
				}
			}
		}
		
		.padding(.horizontal)
	}
	
}


struct TopGamesCategoriesBlock_Previews: PreviewProvider {
	static var previews: some View {
		TopGamesCategoriesBlock()
	}
}
