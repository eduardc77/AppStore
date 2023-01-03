//
//  TodayView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct TodayView: View {
	// MARK: - Private Properties

	@State private var showDetail = false
	@State private var currentItem: LargeCardModel?
	@State private var scale: CGFloat = 1
	@State private var animateView = false
	@State private var animateContent = false
	@State private var scrollOffset: CGFloat = 0
	@State private var beginDragToCloseGesture: Bool = false
	@State private var cornerRadius: CGFloat = 0
	@State private var isAccountViewPresented = false

	@Namespace private var animation

	var body: some View {
		ScrollView {
			sectionHeader(isFirstSection: true)
			items(in: todayItems)
			sectionHeader()
			items(in: moreStories)
			FooterButtonsBlock().padding(20)
			TermsAndConditionsBlock()
		}
		.overlay {
			if let currentItem = currentItem, showDetail {
				detailView(item: currentItem)
					.ignoresSafeArea()
			}
		}
		.toolbar(showDetail ? .hidden : .visible, for: .tabBar)
		.statusBarHidden(showDetail ? true : false)
	}
}

// MARK: - Subviews

private extension TodayView {
	@ViewBuilder
	func sectionHeader(isFirstSection: Bool = false) -> some View {
		Group {
			if isFirstSection {
				VStack(alignment: .leading) {
					Text(Date().toFullDateFormat().uppercased())
						.font(.footnote.weight(.semibold))
						.foregroundColor(.secondary)

					HStack(spacing: 0) {
						Text(Date().toWeekDayFormat())
							.font(.largeTitle.weight(.bold))

						Spacer()

						AccountButton(isAccountViewPresented: $isAccountViewPresented)
					}
					.opacity(showDetail ? 0 : 1)
				}
			} else {
				VStack(alignment: .leading) {
					Divider ()
					Text("More Stories For You")
						.font(.title.weight(.bold))
				}
			}
		}
		.padding(.top)
		.padding(.horizontal, 20)
	}

	@ViewBuilder
	func items(in array: [LargeCardModel]) -> some View {
		ForEach (array) { item in
			Button {
				withAnimation(.largeCardDetail) {
					currentItem = item
					showDetail = true
				}
			} label: {
				cardView(item: item)
			}
			.buttonStyle(.scaleButtonStyle)
			.padding(.bottom)
			.padding(.horizontal, 20)
		}
	}

	// MARK: - Card View

	@ViewBuilder
	func cardView(item: LargeCardModel) -> some View {
		VStack(alignment: .leading, spacing: 0) {
			ZStack(alignment: .topLeading) {
				Image(item.artwork)
					.resizable()
					.scaledToFill()
					.aspectRatio(contentMode: .fill)

				VStack(alignment: .leading, spacing: 8) {
					Text(item.platformTitle.uppercased())
						.foregroundColor(.secondary)
						.font(.headline)

					Text(item.bannerTitle)
						.font(.title.weight(.bold))
						.foregroundColor(.white)
				}
				.offset(y: currentItem?.id == item.id && animateView ? safeArea().top : 0)
				.padding(.horizontal, 20)
				.padding(.top, showDetail ? 0 : 16)
			}

			AppSmallCard1(title: item.appName, subtitle: item.appDescription, imageName: item.appLogo, titleColor: .white, subtitleColor: .white, buttonDescriptionColor: .white, imageSize: 48)
				.padding(.horizontal, 20)
				.padding(.vertical)
				.background(Color(.darkGray))
		}
		.background(.gray)
		.clipShape(RoundedRectangle(cornerRadius: showDetail ? 0 : 16, style: .continuous))
		.shadow(radius: showDetail ? 0 : 12, x: showDetail ? 0 : 8, y: showDetail ? 0 : 8)
		.matchedGeometryEffect(id: item.id, in: animation)
	}

	// MARK: - Detail View

	@ViewBuilder
	func detailView(item: LargeCardModel) -> some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack {
				cardView(item: item)

				VStack(spacing: 16) {
					Text(item.placeholderText)
						.foregroundColor(.secondary)
						.font(.title3)
						.lineSpacing(6)
						.padding(.bottom, 24)

					Divider()

					SecondaryButton(title: "Share Story", systemImageName: "square.and.arrow.up")
						.padding(72)
				}
				.padding(.top)
				.padding(.horizontal, 20)
				.offset(y: scrollOffset > 0 ? scrollOffset : 0)
				.opacity(animateContent ? 1 : 0)
				.scaleEffect(animateView ? 1 : 0, anchor: .top)
			}
			.offset(y: scrollOffset > 0 && scale == 1 ? -scrollOffset : 0)
			.background(Color(.systemBackground))
			.scrollOffset(offset: $scrollOffset)
		}
		.cornerRadius(cornerRadius)
		.coordinateSpace(name: "SCROLL")

		.overlay(alignment: .topTrailing) {
			Button {
				withAnimation(.largeCardDetail) {
					resetAnimations()
				}
			} label: {
				Image(systemName: "xmark.circle.fill")
					.font(.largeTitle)
					.imageScale(.small)
					.foregroundStyle(Color(.darkGray), Color(.systemGroupedBackground))
					.opacity(scale - cornerRadius)

			}
			.padding(.top)
			.padding(.horizontal)
		}
		.onAppear {
			withAnimation(.largeCardDetail) {
				animateView = true
			}
			withAnimation {
				animateContent = true
			}
		}
		.transition(.identity)
		.scaleEffect(scale)
		.background(.ultraThinMaterial.opacity(scale == 1 ? 0 : 1))
		.background(scale == 1 ? Color(.systemBackground) : .clear)

		.onChange(of: scrollOffset) { newValue in
			guard newValue <= 0, !beginDragToCloseGesture else {
				beginDragToCloseGesture = true
				return
			}
			beginDragToCloseGesture = false
		}
		.gesture(beginDragToCloseGesture ? DragGesture(minimumDistance: 0).onChanged(onChanged(value:)).onEnded(onEnded(value:)) : nil)
	}

	func onChanged(value: DragGesture.Value) {
		beginDragToCloseGesture = true
		let scale = value.translation.height / UIScreen.main.bounds.height
		guard 1 - scale <= 1, showDetail else { return }
		cornerRadius = value.translation.height - value.translation.height / 1.2

		if 1 - scale < 0.85 {
			withAnimation(.largeCardDetail) {
				resetAnimations()
			}
		} else if 1 - scale > 0.85 {
			self.scale = 1 - scale
		}
	}

	func onEnded(value: DragGesture.Value) {
		withAnimation(.largeCardDetail) {
			scale = 1
			cornerRadius = 0
			beginDragToCloseGesture = false
		}
	}

	func resetAnimations() {
		currentItem = nil
		showDetail = false
		animateView = false
		animateContent = false
		scale = 1
		beginDragToCloseGesture = false
		cornerRadius = 0
	}
}

extension View {
	func safeArea() -> UIEdgeInsets {
		guard let screen = UIApplication.shared
			.connectedScenes.first as? UIWindowScene else { return .zero }
		guard let safeArea = screen.windows.first?.safeAreaInsets else { return .zero }

		return safeArea
	}
}

struct TodayView_Previews: PreviewProvider {
	static var previews: some View {
		TodayView()
	}
}
