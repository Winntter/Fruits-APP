//  ContentView.swift
//  Fruits

import SwiftUI

struct ContentView: View {
  
  @State private var isShowingSettingsView: Bool = false
  
  private let fruits: [Fruit] = fruitsData
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(fruits.shuffled()) { fruit in
          NavigationLink(destination: {
            FruitDetailView(fruit: fruit)
          }, label: {
            FruitRowView(fruit: fruit)
              .padding(4)
          })
        }
      }
      .navigationTitle("Fruits")
      .toolbar {
        ToolbarItemGroup(placement: .navigationBarTrailing) {
          Button {
            isShowingSettingsView = true
          } label: {
            Image(systemName: "slider.horizontal.3")
          }
          .sheet(isPresented: $isShowingSettingsView) {
            SettingsView()
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
