//
//  AppLargeCard1.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct AppLargeCard1: View {
	// MARK: - Match geometry effect
	@Namespace var animation
	@Binding var animateView: Bool
	var currentItem: LargeCardModel

	var body: some View {
		ZStack(alignment: .leading) {
			VStack(alignment: .leading) {
				Text("CATEGORY")
					.font(.headline)
					.foregroundColor(.secondary)

				Text("App headline")
					.font(.title)
					.foregroundColor(.white)
					.fontWeight(.bold)

				Spacer()

				Text("Description")
					.foregroundColor(.white)
			}
			.padding()
			.frame(maxWidth: .infinity, alignment: .leading)
			.offset(y: currentItem.id == currentItem.id && animateView ? safeArea().top : 0)
		}
		.frame(height: UIScreen.main.bounds.width * 1.1)
		.background(Color(UIColor.systemGray2))
		.clipShape(RoundedRectangle(cornerRadius: 20))

		.matchedGeometryEffect(id: currentItem.id, in: animation)
	}
}


struct LargeCard1_Previews: PreviewProvider {
	static var previews: some View {
		AppLargeCard1(animateView: .constant(false), currentItem: todayItems.first!)
	}
}

struct LargeCardModel: Identifiable {
	var id = UUID().uuidString
	var appName: String
	var appDescription: String
	var appLogo: String
	var bannerTitle: String
	var platformTitle: String
	var artwork: String

	var placeholderText = """
 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel lectus leo. Nam ultrices sem et ex lobortis, eget commodo neque mollis. Phasellus rutrum a ipsum id venenatis. Nullam ut ultricies justo. Integer et sem nunc. Morbi viverra ipsum eget blandit posuere. Aliquam sed venenatis eros, vitae vestibulum justo. Fusce a vestibulum arcu. Mauris vitae odio molestie, imperdiet tortor et, ornare eros. Aenean sit amet ante erat. Sed aliquet vel arcu nec hendrerit. Duis commodo fringilla varius.

 Nam tempor tempus est ac auctor. In hac habitasse platea dictumst. Vivamus consectetur dolor feugiat, posuere nisi nec, dignissim lacus. Nunc non nisi mi. Donec augue ex, consectetur in velit a, malesuada vulputate mauris. Integer quis nibh egestas, facilisis ipsum ac, feugiat eros. Praesent dignissim tempor placerat. Praesent risus erat, mollis vitae mi vitae, malesuada tristique mauris. Aenean ornare tortor libero, vel venenatis lorem mattis a. Quisque viverra semper orci vel semper. Phasellus tempor elementum purus et facilisis. Curabitur maximus felis vitae neque pretium imperdiet. Quisque in massa et sapien condimentum pulvinar. Morbi imperdiet eleifend consectetur. Aliquam non tincidunt sem. Donec in magna pellentesque magna dignissim maximus.

 Nulla vestibulum ultrices ultricies. Sed bibendum ornare vulputate. Cras dictum ultricies elit a maximus. Curabitur ultricies dolor arcu, et consequat mauris scelerisque eu. Aenean venenatis aliquam nulla et fermentum. Curabitur ac dui vel augue finibus porttitor eget in quam. Integer eget malesuada magna. Nullam vel cursus ipsum, quis volutpat mauris. Cras eu suscipit erat.

 Donec diam odio, porta id metus quis, consectetur semper risus. Sed ullamcorper eros at finibus ullamcorper. Curabitur viverra tempor enim eget porttitor. Donec et tincidunt eros. Sed et sem nec ligula maximus tristique. Sed quis consectetur risus. Fusce feugiat nulla quam, in commodo neque fermentum sed. Duis tincidunt molestie ante, ac ullamcorper lacus porttitor non. Sed semper ut velit at dignissim. Fusce condimentum porttitor sem, non auctor turpis blandit at. Vestibulum id justo nec enim iaculis tincidunt. Ut convallis, diam id sollicitudin commodo, ante quam semper lacus, at cursus purus turpis at ipsum.

 Fusce scelerisque orci in arcu fringilla, non posuere nibh volutpat. Nulla quis eros nec metus pretium congue. Morbi at est nec lectus facilisis consectetur eget quis mi. Pellentesque massa dui, porta id maximus vitae, consectetur ut odio. Suspendisse quis purus a quam bibendum ornare. Aenean tempor odio ut commodo sagittis. Fusce at posuere enim. Nulla non orci justo.
 """
}

var todayItems: [LargeCardModel] = [
	LargeCardModel(appName: "Cooking Mama: Cuisine!", appDescription: "Master the kitchen", appLogo: "cookingmama-app-logo", bannerTitle: "Can you cook these delicious dishes?", platformTitle: "Apple Arcade", artwork: "banner-cookingmama"),

	LargeCardModel(appName: "Jetpack Joyride 2", appDescription: "Adventure Awaits.", appLogo: "jetpack-joyride-app-logo", bannerTitle: "Game of the day", platformTitle: "Apple Arcade", artwork: "banner-jetpack-joyride-2"),

	LargeCardModel(appName: "App Name", appDescription: "App Description", appLogo: "", bannerTitle: "App Of The Day", platformTitle: "Apple Arcade", artwork: ""),

	LargeCardModel(appName: "App Name", appDescription: "Practice critical thinking and problem solving with these apps.", appLogo: "", bannerTitle: "Train your brain and have fun", platformTitle: "Get Started", artwork: ""),

	LargeCardModel(appName: "MARVEL Strike Force", appDescription: "MARVEL Heroes & Villains Await", appLogo: "", bannerTitle: "Game Of The Day", platformTitle: "", artwork: ""),

	LargeCardModel(appName: "App Name", appDescription: "Track & share with friends", appLogo: "", bannerTitle: "5 tips for Strava", platformTitle: "Get Started", artwork: ""),

	LargeCardModel(appName: "", appDescription: "", appLogo: "", bannerTitle: "Try these apps for kids", platformTitle: "Featured", artwork: ""),

	LargeCardModel(appName: "App Name", appDescription: "The best ideas deserve the best tools.", appLogo: "cookingmama-app-logo", bannerTitle: "Apps for creators", platformTitle: "Get Creative", artwork: "banner-cookingmama"),
]

var moreStories: [LargeCardModel] = [
	LargeCardModel(appName: "App Name", appDescription: "App Description", appLogo: "", bannerTitle: "Your guide to staying in", platformTitle: "Now Trending", artwork: "post1"),

	LargeCardModel(appName: "", appDescription: "", appLogo: "", bannerTitle: "Our top 10 workout apps", platformTitle: "Essentials", artwork: "post2"),

	LargeCardModel(appName: "Cooking Mama: Cuisine!", appDescription: "Master the kitchen", appLogo: "cookingmama-app-logo", bannerTitle: "Can you cook these delicious dishes?", platformTitle: "Apple Arcade", artwork: "banner-cookingmama2"),

	LargeCardModel(appName: "Jetpack Joyride 2", appDescription: "The best ideas deserve the best tools.", appLogo: "jetpack-joyride-app-logo", bannerTitle: "Apps for creators", platformTitle: "Apple Arcade", artwork: "banner-jetpack-joyride-2"),

	LargeCardModel(appName: "", appDescription: "", appLogo: "", bannerTitle: "Learn to code with these apps", platformTitle: "Everyone Can Code", artwork: "post1"),

	LargeCardModel(appName: "App Name", appDescription: "Make money from your passion", appLogo: "", bannerTitle: "Make your photos popular", platformTitle: "How To", artwork: "post2"),

	LargeCardModel(appName: "App Name", appDescription: "App Description", appLogo: "", bannerTitle: "App Of The Day", platformTitle: "Apple Arcade", artwork: ""),

	LargeCardModel(appName: "App Name", appDescription: "Practice critical thinking and problem solving with these apps.", appLogo: "", bannerTitle: "Train your brain and have fun", platformTitle: "Get Started", artwork: ""),
]
