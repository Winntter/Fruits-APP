//  OnboardingView.swift
//  Fruits

import SwiftUI

struct OnboardingView: View {
  
  private let showLimit: Int = 5
    
  var body: some View {
    TabView {
      ForEach(fruitsData[0...showLimit]) { item in
        FruitCardView(fruit: item)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
