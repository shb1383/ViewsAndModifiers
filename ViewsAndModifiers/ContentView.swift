//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Syrene Haber Bartolome on 2024/09/24.
//

import SwiftUI

struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TitleStyle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SYRENE BARTOLOME")
                .titleStyle()
            Text("iOS Developer")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
