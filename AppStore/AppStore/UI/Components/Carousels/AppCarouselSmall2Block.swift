//
//  AppCarouselSmall2Block.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI

struct AppCarouselSmall2Block: View {
  
  var body: some View {
    VStack(spacing: 20) {
      VStack {
        HStack {
			  ForEach(Range(0...4), id: \.self) { _ in
				  AppContainer()
			  }
        }
        
        HStack {
			  ForEach(Range(0...5), id: \.self) { _ in
				  AppContainer()
			  }
        }
      }
      
      Text(" Arcade")
      
      DefaultButton(title: "See all games")
        .padding(.horizontal, 64)

    }
    .frame(width: UIScreen.main.bounds.width, height: 250)
    .padding(.bottom)
  }
  
}

struct AppCarouselSmall2Block_Previews: PreviewProvider {
    static var previews: some View {
        AppCarouselSmall2Block()
    }
}
