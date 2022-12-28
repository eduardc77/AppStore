//
//  DiscoverBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct DiscoverBlock: View { 
	var body: some View {
		VStack(alignment: .leading) {
			Text("Discover")
				.font(.title3)
				.bold()
			
			Divider()
			
			Group {
				SingleLineButton(title: "alarm clock")
				Divider()
				SingleLineButton(title: "reverse video")
				Divider()
				SingleLineButton(title: "video editor")
				Divider()
				SingleLineButton(title: "car games")
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding()
	}
}


struct DiscoverBlock_Previews: PreviewProvider {
	static var previews: some View {
		DiscoverBlock()
	}
}



